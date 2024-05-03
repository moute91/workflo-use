#!/bin/bash
#
# This script requires a PDF convertor wkhtmltopdf and x-server to convert HTML files to PDF files.
# IR and deployment PDFs will be saved to a folder Reports under Artifactss
#

#### In Go pipeline setting, this script won't be started if the deployment fails

html_pdf_convertor()
{
  xvfb-run --server-args="-screen 0, 1024x768x24" wkhtmltopdf  $1 $2          
  echo -e "\n\n"
  sleep 3
}

PRODUCT_NAME="CPP CONFIGURATION"
DEPLOYMENT_STATUS="Passed"
PRODUCT_URL="N/A(AWS LAMBDA does not have an URL because is a serverless service)"
DEPLOYER="$GO_TRIGGER_USER"
VERSION="$CODE_VERSION"
DEPLOYER="$Deployed_By"
ENVIRONMENT="$ENV_NAME"
COMMIT="$GO_REVISION_CPP_CONFIGURATIONS"
DATE=$(date +"%Y-%m-%d %H:%M")
STATUS_DEPLOYMENT="Succesful"

if [[ -v GITREF_OVERRIDE ]]; then
  echo "GITREF_OVERRIDE: $GITREF_OVERRIDE"
#  COMMIT=$GITREF_OVERRIDE
fi

DOCS=../Reports
IR_HTML=$DOCS/app_ir.html
IR_PDF=$DOCS/IR.pdf

mkdir $DOCS > /dev/null 2>&1

echo "<html>"                                                                                     > $IR_HTML
echo "<head><title>$PRODUCT_NAME Installation Report</title></head>"                              >> $IR_HTML
echo "<body>"                                                                                     >> $IR_HTML
# echo "<p><img width=306px height=90px align='right'"                                            >> $IR_HTML
echo "<p><font size='5'><b>$PRODUCT_NAME Installation Report</b></font></p>"                      >> $IR_HTML
echo "<table border=1 style='font-size:14px;word-wrap:break-word;width:100%;table-layout:fixed;'" >> $IR_HTML
echo "bordercolor='#E5E7E9' cellspacing=0 cellpadding=5 align='left'>"                            >> $IR_HTML
echo "<col width='15%'><col width='85%'>"                                                         >> $IR_HTML
echo "<tr bgcolor='#E5E7E9'><td><b>Parameter</b></td><td><b>Value</b></td></tr>"                  >> $IR_HTML
echo "<tr><td>Product/Service Name</td><td>$PRODUCT_NAME</td></tr>"                               >> $IR_HTML
echo "<tr><td>Product/Service version</td><td>$VERSION</td></tr>"                                 >> $IR_HTML
echo "<tr><td>Deployment Status</td><td>$DEPLOYMENT_STATUS</td></tr>"                             >> $IR_HTML
echo "<tr><td>Status Deployment</td><td>$STATUS_DEPLOYMENT</td></tr>"                             >> $IR_HTML
echo "<tr><td>Deployed By</td><td>$DEPLOYER</td></tr>"                                            >> $IR_HTML
echo "<tr><td>Date Deployed</td><td>$DATE</td></tr>"                                              >> $IR_HTML
echo "<tr><td>Product URL</td><td>$PRODUCT_URL</td></tr>"                                            >> $IR_HTML
echo "<tr><td>Environment</td><td>$ENVIRONMENT</td></tr>"                                         >> $IR_HTML
echo "<tr><td>Commit/Git Ref</td><td>$COMMIT</td></tr>"                                                   >> $IR_HTML
echo "<tr><td>Deployment Log</td><td>"                                                            >> $IR_HTML

cat ../src/text.md | while read oneline
do
   echo "${oneline}<br>" >> $IR_HTML
done

echo "</td></tr></table>" >> $IR_HTML
echo -e "Generating an IR PDF file"
html_pdf_convertor $IR_HTML $IR_PDF
