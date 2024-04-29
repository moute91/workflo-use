2024-04-29T15:05:01.4341162Z Current runner version: '2.316.0'
2024-04-29T15:05:01.4365794Z ##[group]Operating System
2024-04-29T15:05:01.4366421Z Ubuntu
2024-04-29T15:05:01.4366923Z 22.04.4
2024-04-29T15:05:01.4367269Z LTS
2024-04-29T15:05:01.4367635Z ##[endgroup]
2024-04-29T15:05:01.4368103Z ##[group]Runner Image
2024-04-29T15:05:01.4368559Z Image: ubuntu-22.04
2024-04-29T15:05:01.4368982Z Version: 20240422.1.0
2024-04-29T15:05:01.4370064Z Included Software: https://github.com/actions/runner-images/blob/ubuntu22/20240422.1/images/ubuntu/Ubuntu2204-Readme.md
2024-04-29T15:05:01.4371581Z Image Release: https://github.com/actions/runner-images/releases/tag/ubuntu22%2F20240422.1
2024-04-29T15:05:01.4372497Z ##[endgroup]
2024-04-29T15:05:01.4372976Z ##[group]Runner Image Provisioner
2024-04-29T15:05:01.4373499Z 2.0.369.1
2024-04-29T15:05:01.4373922Z ##[endgroup]
2024-04-29T15:05:01.4374827Z ##[group]GITHUB_TOKEN Permissions
2024-04-29T15:05:01.4376581Z Contents: read
2024-04-29T15:05:01.4377159Z Metadata: read
2024-04-29T15:05:01.4377757Z ##[endgroup]
2024-04-29T15:05:01.4380070Z Secret source: Actions
2024-04-29T15:05:01.4380654Z Prepare workflow directory
2024-04-29T15:05:01.5293091Z Prepare all required actions
2024-04-29T15:05:01.5450496Z Getting action download info
2024-04-29T15:05:01.7599435Z Download action repository 'actions/checkout@v4' (SHA:0ad4b8fadaa221de15dcec353f45205ec38ea70b)
2024-04-29T15:05:02.0632327Z Download action repository 'actions/setup-python@v4' (SHA:65d7f2d534ac1bc67fcd62888c5f4f3d2cb2b236)
2024-04-29T15:05:02.2408932Z Complete job name: deploy_to_sandbox
2024-04-29T15:05:02.3241010Z ##[group]Run actions/checkout@v4
2024-04-29T15:05:02.3241769Z with:
2024-04-29T15:05:02.3242209Z   repository: mdsol/cpp-configurations
2024-04-29T15:05:02.3242965Z   token: ***
2024-04-29T15:05:02.3243485Z   ssh-strict: true
2024-04-29T15:05:02.3243891Z   ssh-user: git
2024-04-29T15:05:02.3244274Z   persist-credentials: true
2024-04-29T15:05:02.3244893Z   clean: true
2024-04-29T15:05:02.3245311Z   sparse-checkout-cone-mode: true
2024-04-29T15:05:02.3245962Z   fetch-depth: 1
2024-04-29T15:05:02.3246367Z   fetch-tags: false
2024-04-29T15:05:02.3246786Z   show-progress: true
2024-04-29T15:05:02.3247285Z   lfs: false
2024-04-29T15:05:02.3247629Z   submodules: false
2024-04-29T15:05:02.3248049Z   set-safe-directory: true
2024-04-29T15:05:02.3248584Z env:
2024-04-29T15:05:02.3249114Z   PDK_CONFIG_PROD_ARTIFACTORY_USERNAME: pdk_product-prod-robot
2024-04-29T15:05:02.3271704Z   PDK_CONFIG_PROD_ARTIFACTORY_TOKEN: ***
2024-04-29T15:05:02.3272595Z   PDK_CONFIG_PROD_REPO_NAME: pdk_product-npm-prod-local
2024-04-29T15:05:02.3273461Z   PDK_CONFIG_PREPROD_ARTIFACTORY_USERNAME: pdk_product-preprod-robot
2024-04-29T15:05:02.3294283Z   PDK_CONFIG_PREPROD_ARTIFACTORY_TOKEN: ***
2024-04-29T15:05:02.3295099Z   PDK_CONFIG_PREPROD_REPO_NAME: pdk_product-npm-preprod-local
2024-04-29T15:05:02.3296024Z   ARTIFACTORY_URL: https://mdsol.jfrog.io/artifactory
2024-04-29T15:05:02.3296767Z   MAUTH_APP_ID: eb91a386-dd75-42e2-b03e-389b2fd0e3d2
2024-04-29T15:05:02.3297626Z   DATA_API_URL: https://cppdataapi-distro-data-api.imedidata.net
2024-04-29T15:05:02.3298600Z   GATEWAY_S3_BUCKET: cppapigateway-cppdistro-distro-bucket
2024-04-29T15:05:02.3299408Z   UI_URL: https://imagingv4-distro.imedidata.net
2024-04-29T15:05:02.3300092Z   V3_API_URL: https://imaging-distro.imedidata.net
2024-04-29T15:05:02.3300826Z   V3_CLIENT_ID: cpp-data-admin
2024-04-29T15:05:02.3301328Z   ENV_NAME: distro
2024-04-29T15:05:02.3301727Z   IS_DRY_RUN: true
2024-04-29T15:05:02.3440794Z   MAUTH_PRIVATE_KEY: ***
2024-04-29T15:05:02.3441472Z ##[endgroup]
2024-04-29T15:05:02.5827984Z Syncing repository: mdsol/cpp-configurations
2024-04-29T15:05:02.5830052Z ##[group]Getting Git version info
2024-04-29T15:05:02.5831056Z Working directory is '/home/runner/work/cpp-configurations/cpp-configurations'
2024-04-29T15:05:02.5832433Z [command]/usr/bin/git version
2024-04-29T15:05:02.5948221Z git version 2.43.2
2024-04-29T15:05:02.7152199Z ##[endgroup]
2024-04-29T15:05:02.7188148Z Temporarily overriding HOME='/home/runner/work/_temp/1324e407-abbf-49ac-9909-e09e6d8afc68' before making global git config changes
2024-04-29T15:05:02.7191318Z Adding repository directory to the temporary git global config as a safe directory
2024-04-29T15:05:02.7193533Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/cpp-configurations/cpp-configurations
2024-04-29T15:05:02.7197674Z Deleting the contents of '/home/runner/work/cpp-configurations/cpp-configurations'
2024-04-29T15:05:02.7199812Z ##[group]Initializing the repository
2024-04-29T15:05:02.7201509Z [command]/usr/bin/git init /home/runner/work/cpp-configurations/cpp-configurations
2024-04-29T15:05:02.7203530Z hint: Using 'master' as the name for the initial branch. This default branch name
2024-04-29T15:05:02.7205221Z hint: is subject to change. To configure the initial branch name to use in all
2024-04-29T15:05:02.7207178Z hint: of your new repositories, which will suppress this warning, call:
2024-04-29T15:05:02.7208478Z hint: 
2024-04-29T15:05:02.7209469Z hint: 	git config --global init.defaultBranch <name>
2024-04-29T15:05:02.7210663Z hint: 
2024-04-29T15:05:02.7211821Z hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
2024-04-29T15:05:02.7213795Z hint: 'development'. The just-created branch can be renamed via this command:
2024-04-29T15:05:02.7215115Z hint: 
2024-04-29T15:05:02.7215819Z hint: 	git branch -m <name>
2024-04-29T15:05:02.7217672Z Initialized empty Git repository in /home/runner/work/cpp-configurations/cpp-configurations/.git/
2024-04-29T15:05:02.7221513Z [command]/usr/bin/git remote add origin https://github.com/mdsol/cpp-configurations
2024-04-29T15:05:02.7224643Z ##[endgroup]
2024-04-29T15:05:02.7225996Z ##[group]Disabling automatic garbage collection
2024-04-29T15:05:02.7227250Z [command]/usr/bin/git config --local gc.auto 0
2024-04-29T15:05:02.7229680Z ##[endgroup]
2024-04-29T15:05:02.7230895Z ##[group]Setting up auth
2024-04-29T15:05:02.7232274Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2024-04-29T15:05:02.7237754Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2024-04-29T15:05:02.7330750Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2024-04-29T15:05:02.7336069Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2024-04-29T15:05:02.7557482Z [command]/usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***
2024-04-29T15:05:02.7868563Z ##[endgroup]
2024-04-29T15:05:02.7870101Z ##[group]Fetching the repository
2024-04-29T15:05:02.7872443Z [command]/usr/bin/git -c protocol.version=2 fetch --no-tags --prune --no-recurse-submodules --depth=1 origin +830e703466e033375e3928259eea8671627db16a:refs/remotes/origin/develop
2024-04-29T15:05:03.4896158Z From https://github.com/mdsol/cpp-configurations
2024-04-29T15:05:03.4897843Z  * [new ref]         830e703466e033375e3928259eea8671627db16a -> origin/develop
2024-04-29T15:05:03.4967930Z ##[endgroup]
2024-04-29T15:05:03.4969462Z ##[group]Determining the checkout info
2024-04-29T15:05:03.4972019Z ##[endgroup]
2024-04-29T15:05:03.4972611Z [command]/usr/bin/git sparse-checkout disable
2024-04-29T15:05:03.4998294Z [command]/usr/bin/git config --local --unset-all extensions.worktreeConfig
2024-04-29T15:05:03.5028156Z ##[group]Checking out the ref
2024-04-29T15:05:03.5031924Z [command]/usr/bin/git checkout --progress --force -B develop refs/remotes/origin/develop
2024-04-29T15:05:03.5978090Z Switched to a new branch 'develop'
2024-04-29T15:05:03.5979686Z branch 'develop' set up to track 'origin/develop'.
2024-04-29T15:05:03.5984563Z ##[endgroup]
2024-04-29T15:05:03.6019212Z [command]/usr/bin/git log -1 --format='%H'
2024-04-29T15:05:03.6043263Z '830e703466e033375e3928259eea8671627db16a'
2024-04-29T15:05:03.6535655Z ##[group]Run actions/setup-python@v4
2024-04-29T15:05:03.6536168Z with:
2024-04-29T15:05:03.6536623Z   python-version: 3.11
2024-04-29T15:05:03.6537048Z   check-latest: false
2024-04-29T15:05:03.6537564Z   token: ***
2024-04-29T15:05:03.6538008Z   update-environment: true
2024-04-29T15:05:03.6538461Z   allow-prereleases: false
2024-04-29T15:05:03.6538926Z env:
2024-04-29T15:05:03.6539418Z   PDK_CONFIG_PROD_ARTIFACTORY_USERNAME: pdk_product-prod-robot
2024-04-29T15:05:03.6560268Z   PDK_CONFIG_PROD_ARTIFACTORY_TOKEN: ***
2024-04-29T15:05:03.6561000Z   PDK_CONFIG_PROD_REPO_NAME: pdk_product-npm-prod-local
2024-04-29T15:05:03.6561772Z   PDK_CONFIG_PREPROD_ARTIFACTORY_USERNAME: pdk_product-preprod-robot
2024-04-29T15:05:03.6580122Z   PDK_CONFIG_PREPROD_ARTIFACTORY_TOKEN: ***
2024-04-29T15:05:03.6580887Z   PDK_CONFIG_PREPROD_REPO_NAME: pdk_product-npm-preprod-local
2024-04-29T15:05:03.6581583Z   ARTIFACTORY_URL: https://mdsol.jfrog.io/artifactory
2024-04-29T15:05:03.6582360Z   MAUTH_APP_ID: eb91a386-dd75-42e2-b03e-389b2fd0e3d2
2024-04-29T15:05:03.6583120Z   DATA_API_URL: https://cppdataapi-distro-data-api.imedidata.net
2024-04-29T15:05:03.6583921Z   GATEWAY_S3_BUCKET: cppapigateway-cppdistro-distro-bucket
2024-04-29T15:05:03.6584700Z   UI_URL: https://imagingv4-distro.imedidata.net
2024-04-29T15:05:03.6585338Z   V3_API_URL: https://imaging-distro.imedidata.net
2024-04-29T15:05:03.6585979Z   V3_CLIENT_ID: cpp-data-admin
2024-04-29T15:05:03.6586431Z   ENV_NAME: distro
2024-04-29T15:05:03.6586803Z   IS_DRY_RUN: true
2024-04-29T15:05:03.6721454Z   MAUTH_PRIVATE_KEY: ***
2024-04-29T15:05:03.6721904Z ##[endgroup]
2024-04-29T15:05:03.9090940Z ##[group]Installed versions
2024-04-29T15:05:03.9206514Z Successfully set up CPython (3.11.9)
2024-04-29T15:05:03.9211277Z ##[endgroup]
2024-04-29T15:05:03.9346461Z ##[group]Run python -m pip install --upgrade pip
2024-04-29T15:05:03.9347269Z [36;1mpython -m pip install --upgrade pip[0m
2024-04-29T15:05:03.9348098Z [36;1mpip install dohq-artifactory --upgrade  # Install the 'artifactory' module[0m
2024-04-29T15:05:03.9349259Z [36;1mpip install ansible-runner # Install the module for executing ansible playbooks[0m
2024-04-29T15:05:03.9350112Z [36;1mpip install boto3 # Install 'boto3' module[0m
2024-04-29T15:05:03.9607292Z shell: /usr/bin/bash -e {0}
2024-04-29T15:05:03.9607820Z env:
2024-04-29T15:05:03.9608512Z   PDK_CONFIG_PROD_ARTIFACTORY_USERNAME: pdk_product-prod-robot
2024-04-29T15:05:03.9629564Z   PDK_CONFIG_PROD_ARTIFACTORY_TOKEN: ***
2024-04-29T15:05:03.9630195Z   PDK_CONFIG_PROD_REPO_NAME: pdk_product-npm-prod-local
2024-04-29T15:05:03.9631018Z   PDK_CONFIG_PREPROD_ARTIFACTORY_USERNAME: pdk_product-preprod-robot
2024-04-29T15:05:03.9649744Z   PDK_CONFIG_PREPROD_ARTIFACTORY_TOKEN: ***
2024-04-29T15:05:03.9650647Z   PDK_CONFIG_PREPROD_REPO_NAME: pdk_product-npm-preprod-local
2024-04-29T15:05:03.9651414Z   ARTIFACTORY_URL: https://mdsol.jfrog.io/artifactory
2024-04-29T15:05:03.9652133Z   MAUTH_APP_ID: eb91a386-dd75-42e2-b03e-389b2fd0e3d2
2024-04-29T15:05:03.9652840Z   DATA_API_URL: https://cppdataapi-distro-data-api.imedidata.net
2024-04-29T15:05:03.9653647Z   GATEWAY_S3_BUCKET: cppapigateway-cppdistro-distro-bucket
2024-04-29T15:05:03.9654409Z   UI_URL: https://imagingv4-distro.imedidata.net
2024-04-29T15:05:03.9655097Z   V3_API_URL: https://imaging-distro.imedidata.net
2024-04-29T15:05:03.9655688Z   V3_CLIENT_ID: cpp-data-admin
2024-04-29T15:05:03.9656197Z   ENV_NAME: distro
2024-04-29T15:05:03.9656591Z   IS_DRY_RUN: true
2024-04-29T15:05:03.9790646Z   MAUTH_PRIVATE_KEY: ***
2024-04-29T15:05:03.9791353Z   pythonLocation: /opt/hostedtoolcache/Python/3.11.9/x64
2024-04-29T15:05:03.9792126Z   PKG_CONFIG_PATH: /opt/hostedtoolcache/Python/3.11.9/x64/lib/pkgconfig
2024-04-29T15:05:03.9792957Z   Python_ROOT_DIR: /opt/hostedtoolcache/Python/3.11.9/x64
2024-04-29T15:05:03.9793662Z   Python2_ROOT_DIR: /opt/hostedtoolcache/Python/3.11.9/x64
2024-04-29T15:05:03.9794341Z   Python3_ROOT_DIR: /opt/hostedtoolcache/Python/3.11.9/x64
2024-04-29T15:05:03.9795753Z   LD_LIBRARY_PATH: /opt/hostedtoolcache/Python/3.11.9/x64/lib
2024-04-29T15:05:03.9796390Z ##[endgroup]
2024-04-29T15:05:04.8341395Z Requirement already satisfied: pip in /opt/hostedtoolcache/Python/3.11.9/x64/lib/python3.11/site-packages (24.0)
2024-04-29T15:05:05.6772653Z Collecting dohq-artifactory
2024-04-29T15:05:05.7287892Z   Downloading dohq_artifactory-0.10.0-py3-none-any.whl.metadata (1.3 kB)
2024-04-29T15:05:05.7779534Z Collecting requests>=2.30.0 (from dohq-artifactory)
2024-04-29T15:05:05.7860447Z   Downloading requests-2.31.0-py3-none-any.whl.metadata (4.6 kB)
2024-04-29T15:05:05.8106760Z Collecting python-dateutil (from dohq-artifactory)
2024-04-29T15:05:05.8184419Z   Downloading python_dateutil-2.9.0.post0-py2.py3-none-any.whl.metadata (8.4 kB)
2024-04-29T15:05:05.8491560Z Collecting PyJWT~=2.0 (from dohq-artifactory)
2024-04-29T15:05:05.8568259Z   Downloading PyJWT-2.8.0-py3-none-any.whl.metadata (4.2 kB)
2024-04-29T15:05:05.9541949Z Collecting charset-normalizer<4,>=2 (from requests>=2.30.0->dohq-artifactory)
2024-04-29T15:05:05.9622125Z   Downloading charset_normalizer-3.3.2-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (33 kB)
2024-04-29T15:05:05.9942516Z Collecting idna<4,>=2.5 (from requests>=2.30.0->dohq-artifactory)
2024-04-29T15:05:06.0027226Z   Downloading idna-3.7-py3-none-any.whl.metadata (9.9 kB)
2024-04-29T15:05:06.0524573Z Collecting urllib3<3,>=1.21.1 (from requests>=2.30.0->dohq-artifactory)
2024-04-29T15:05:06.0603788Z   Downloading urllib3-2.2.1-py3-none-any.whl.metadata (6.4 kB)
2024-04-29T15:05:06.0899559Z Collecting certifi>=2017.4.17 (from requests>=2.30.0->dohq-artifactory)
2024-04-29T15:05:06.0973678Z   Downloading certifi-2024.2.2-py3-none-any.whl.metadata (2.2 kB)
2024-04-29T15:05:06.1215226Z Collecting six>=1.5 (from python-dateutil->dohq-artifactory)
2024-04-29T15:05:06.1289241Z   Downloading six-1.16.0-py2.py3-none-any.whl.metadata (1.8 kB)
2024-04-29T15:05:06.1518332Z Downloading dohq_artifactory-0.10.0-py3-none-any.whl (32 kB)
2024-04-29T15:05:06.1622122Z Downloading PyJWT-2.8.0-py3-none-any.whl (22 kB)
2024-04-29T15:05:06.1733493Z Downloading requests-2.31.0-py3-none-any.whl (62 kB)
2024-04-29T15:05:06.1789283Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 62.6/62.6 kB 17.5 MB/s eta 0:00:00
2024-04-29T15:05:06.1873762Z Downloading python_dateutil-2.9.0.post0-py2.py3-none-any.whl (229 kB)
2024-04-29T15:05:06.2042289Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 229.9/229.9 kB 15.2 MB/s eta 0:00:00
2024-04-29T15:05:06.2118625Z Downloading certifi-2024.2.2-py3-none-any.whl (163 kB)
2024-04-29T15:05:06.2196231Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 163.8/163.8 kB 26.9 MB/s eta 0:00:00
2024-04-29T15:05:06.2274508Z Downloading charset_normalizer-3.3.2-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (140 kB)
2024-04-29T15:05:06.2347274Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 140.3/140.3 kB 24.7 MB/s eta 0:00:00
2024-04-29T15:05:06.2423168Z Downloading idna-3.7-py3-none-any.whl (66 kB)
2024-04-29T15:05:06.2474606Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 66.8/66.8 kB 16.9 MB/s eta 0:00:00
2024-04-29T15:05:06.2552056Z Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
2024-04-29T15:05:06.2651855Z Downloading urllib3-2.2.1-py3-none-any.whl (121 kB)
2024-04-29T15:05:06.2715789Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 121.1/121.1 kB 24.6 MB/s eta 0:00:00
2024-04-29T15:05:06.3365461Z Installing collected packages: urllib3, six, PyJWT, idna, charset-normalizer, certifi, requests, python-dateutil, dohq-artifactory
2024-04-29T15:05:06.6922452Z Successfully installed PyJWT-2.8.0 certifi-2024.2.2 charset-normalizer-3.3.2 dohq-artifactory-0.10.0 idna-3.7 python-dateutil-2.9.0.post0 requests-2.31.0 six-1.16.0 urllib3-2.2.1
2024-04-29T15:05:07.2608377Z Collecting ansible-runner
2024-04-29T15:05:07.3092424Z   Downloading ansible_runner-2.3.6-py3-none-any.whl.metadata (3.5 kB)
2024-04-29T15:05:07.3340526Z Collecting pexpect>=4.5 (from ansible-runner)
2024-04-29T15:05:07.3416089Z   Downloading pexpect-4.9.0-py2.py3-none-any.whl.metadata (2.5 kB)
2024-04-29T15:05:07.3739316Z Collecting packaging (from ansible-runner)
2024-04-29T15:05:07.3814678Z   Downloading packaging-24.0-py3-none-any.whl.metadata (3.2 kB)
2024-04-29T15:05:07.4054345Z Collecting python-daemon (from ansible-runner)
2024-04-29T15:05:07.4129034Z   Downloading python_daemon-3.0.1-py3-none-any.whl.metadata (2.2 kB)
2024-04-29T15:05:07.4596674Z Collecting pyyaml (from ansible-runner)
2024-04-29T15:05:07.4674412Z   Downloading PyYAML-6.0.1-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (2.1 kB)
2024-04-29T15:05:07.4714977Z Requirement already satisfied: six in /opt/hostedtoolcache/Python/3.11.9/x64/lib/python3.11/site-packages (from ansible-runner) (1.16.0)
2024-04-29T15:05:07.4891084Z Collecting ptyprocess>=0.5 (from pexpect>=4.5->ansible-runner)
2024-04-29T15:05:07.4965866Z   Downloading ptyprocess-0.7.0-py2.py3-none-any.whl.metadata (1.3 kB)
2024-04-29T15:05:07.5314762Z Collecting docutils (from python-daemon->ansible-runner)
2024-04-29T15:05:07.5386919Z   Downloading docutils-0.21.2-py3-none-any.whl.metadata (2.8 kB)
2024-04-29T15:05:07.5582613Z Collecting lockfile>=0.10 (from python-daemon->ansible-runner)
2024-04-29T15:05:07.5655440Z   Downloading lockfile-0.12.2-py2.py3-none-any.whl.metadata (2.4 kB)
2024-04-29T15:05:07.5707920Z Requirement already satisfied: setuptools>=62.4.0 in /opt/hostedtoolcache/Python/3.11.9/x64/lib/python3.11/site-packages (from python-daemon->ansible-runner) (65.5.0)
2024-04-29T15:05:07.6091897Z Downloading ansible_runner-2.3.6-py3-none-any.whl (81 kB)
2024-04-29T15:05:07.6216603Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 81.6/81.6 kB 7.3 MB/s eta 0:00:00
2024-04-29T15:05:07.6293623Z Downloading pexpect-4.9.0-py2.py3-none-any.whl (63 kB)
2024-04-29T15:05:07.6342804Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 63.8/63.8 kB 19.0 MB/s eta 0:00:00
2024-04-29T15:05:07.6425569Z Downloading packaging-24.0-py3-none-any.whl (53 kB)
2024-04-29T15:05:07.6481474Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 53.5/53.5 kB 11.8 MB/s eta 0:00:00
2024-04-29T15:05:07.6555796Z Downloading python_daemon-3.0.1-py3-none-any.whl (31 kB)
2024-04-29T15:05:07.6662518Z Downloading PyYAML-6.0.1-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (757 kB)
2024-04-29T15:05:07.6846457Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 757.7/757.7 kB 46.4 MB/s eta 0:00:00
2024-04-29T15:05:07.6921311Z Downloading lockfile-0.12.2-py2.py3-none-any.whl (13 kB)
2024-04-29T15:05:07.7017529Z Downloading ptyprocess-0.7.0-py2.py3-none-any.whl (13 kB)
2024-04-29T15:05:07.7145200Z Downloading docutils-0.21.2-py3-none-any.whl (587 kB)
2024-04-29T15:05:07.7240358Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 587.4/587.4 kB 78.2 MB/s eta 0:00:00
2024-04-29T15:05:07.8013750Z Installing collected packages: ptyprocess, lockfile, pyyaml, pexpect, packaging, docutils, python-daemon, ansible-runner
2024-04-29T15:05:08.2873787Z Successfully installed ansible-runner-2.3.6 docutils-0.21.2 lockfile-0.12.2 packaging-24.0 pexpect-4.9.0 ptyprocess-0.7.0 python-daemon-3.0.1 pyyaml-6.0.1
2024-04-29T15:05:09.2050241Z Collecting boto3
2024-04-29T15:05:09.2735061Z   Downloading boto3-1.34.93-py3-none-any.whl.metadata (6.6 kB)
2024-04-29T15:05:09.7229792Z Collecting botocore<1.35.0,>=1.34.93 (from boto3)
2024-04-29T15:05:09.7316891Z   Downloading botocore-1.34.93-py3-none-any.whl.metadata (5.7 kB)
2024-04-29T15:05:09.7552801Z Collecting jmespath<2.0.0,>=0.7.1 (from boto3)
2024-04-29T15:05:09.7631475Z   Downloading jmespath-1.0.1-py3-none-any.whl.metadata (7.6 kB)
2024-04-29T15:05:09.7917885Z Collecting s3transfer<0.11.0,>=0.10.0 (from boto3)
2024-04-29T15:05:09.7995776Z   Downloading s3transfer-0.10.1-py3-none-any.whl.metadata (1.7 kB)
2024-04-29T15:05:09.8094716Z Requirement already satisfied: python-dateutil<3.0.0,>=2.1 in /opt/hostedtoolcache/Python/3.11.9/x64/lib/python3.11/site-packages (from botocore<1.35.0,>=1.34.93->boto3) (2.9.0.post0)
2024-04-29T15:05:09.8112220Z Requirement already satisfied: urllib3!=2.2.0,<3,>=1.25.4 in /opt/hostedtoolcache/Python/3.11.9/x64/lib/python3.11/site-packages (from botocore<1.35.0,>=1.34.93->boto3) (2.2.1)
2024-04-29T15:05:09.9036178Z Requirement already satisfied: six>=1.5 in /opt/hostedtoolcache/Python/3.11.9/x64/lib/python3.11/site-packages (from python-dateutil<3.0.0,>=2.1->botocore<1.35.0,>=1.34.93->boto3) (1.16.0)
2024-04-29T15:05:09.9187605Z Downloading boto3-1.34.93-py3-none-any.whl (139 kB)
2024-04-29T15:05:09.9387019Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 139.3/139.3 kB 7.9 MB/s eta 0:00:00
2024-04-29T15:05:09.9461810Z Downloading botocore-1.34.93-py3-none-any.whl (12.2 MB)
2024-04-29T15:05:10.0611986Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 12.2/12.2 MB 109.9 MB/s eta 0:00:00
2024-04-29T15:05:10.0689509Z Downloading jmespath-1.0.1-py3-none-any.whl (20 kB)
2024-04-29T15:05:10.0802048Z Downloading s3transfer-0.10.1-py3-none-any.whl (82 kB)
2024-04-29T15:05:10.0857248Z    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 82.2/82.2 kB 20.6 MB/s eta 0:00:00
2024-04-29T15:05:10.1899422Z Installing collected packages: jmespath, botocore, s3transfer, boto3
2024-04-29T15:05:10.8001323Z Successfully installed boto3-1.34.93 botocore-1.34.93 jmespath-1.0.1 s3transfer-0.10.1
2024-04-29T15:05:10.9485321Z ##[group]Run python scripts/workflow/deploy_all_snapshot_artifacts.py
2024-04-29T15:05:10.9486052Z [36;1mpython scripts/workflow/deploy_all_snapshot_artifacts.py[0m
2024-04-29T15:05:10.9538658Z shell: /usr/bin/bash -e {0}
2024-04-29T15:05:10.9539051Z env:
2024-04-29T15:05:10.9539609Z   PDK_CONFIG_PROD_ARTIFACTORY_USERNAME: pdk_product-prod-robot
2024-04-29T15:05:10.9551476Z   PDK_CONFIG_PROD_ARTIFACTORY_TOKEN: ***
2024-04-29T15:05:10.9552092Z   PDK_CONFIG_PROD_REPO_NAME: pdk_product-npm-prod-local
2024-04-29T15:05:10.9552717Z   PDK_CONFIG_PREPROD_ARTIFACTORY_USERNAME: pdk_product-preprod-robot
2024-04-29T15:05:10.9563699Z   PDK_CONFIG_PREPROD_ARTIFACTORY_TOKEN: ***
2024-04-29T15:05:10.9564394Z   PDK_CONFIG_PREPROD_REPO_NAME: pdk_product-npm-preprod-local
2024-04-29T15:05:10.9565014Z   ARTIFACTORY_URL: https://mdsol.jfrog.io/artifactory
2024-04-29T15:05:10.9565584Z   MAUTH_APP_ID: eb91a386-dd75-42e2-b03e-389b2fd0e3d2
2024-04-29T15:05:10.9566368Z   DATA_API_URL: https://cppdataapi-distro-data-api.imedidata.net
2024-04-29T15:05:10.9567073Z   GATEWAY_S3_BUCKET: cppapigateway-cppdistro-distro-bucket
2024-04-29T15:05:10.9567686Z   UI_URL: https://imagingv4-distro.imedidata.net
2024-04-29T15:05:10.9568221Z   V3_API_URL: https://imaging-distro.imedidata.net
2024-04-29T15:05:10.9568720Z   V3_CLIENT_ID: cpp-data-admin
2024-04-29T15:05:10.9569167Z   ENV_NAME: distro
2024-04-29T15:05:10.9569519Z   IS_DRY_RUN: true
2024-04-29T15:05:10.9640637Z   MAUTH_PRIVATE_KEY: ***
2024-04-29T15:05:10.9641120Z   pythonLocation: /opt/hostedtoolcache/Python/3.11.9/x64
2024-04-29T15:05:10.9641784Z   PKG_CONFIG_PATH: /opt/hostedtoolcache/Python/3.11.9/x64/lib/pkgconfig
2024-04-29T15:05:10.9642484Z   Python_ROOT_DIR: /opt/hostedtoolcache/Python/3.11.9/x64
2024-04-29T15:05:10.9643066Z   Python2_ROOT_DIR: /opt/hostedtoolcache/Python/3.11.9/x64
2024-04-29T15:05:10.9643629Z   Python3_ROOT_DIR: /opt/hostedtoolcache/Python/3.11.9/x64
2024-04-29T15:05:10.9644504Z   LD_LIBRARY_PATH: /opt/hostedtoolcache/Python/3.11.9/x64/lib
2024-04-29T15:05:10.9645019Z ##[endgroup]
2024-04-29T15:05:12.4352568Z Deploying release artifact for configurations lambda with version 0.0.1
2024-04-29T15:05:12.4354119Z AnsibleOps.__run_ansible_playbook() takes 2 positional arguments but 3 were given
2024-04-29T15:05:12.4920651Z ##[error]Process completed with exit code 1.
2024-04-29T15:05:12.5020807Z Post job cleanup.
2024-04-29T15:05:12.5770928Z [command]/usr/bin/git version
2024-04-29T15:05:12.5826234Z git version 2.43.2
2024-04-29T15:05:12.5878400Z Temporarily overriding HOME='/home/runner/work/_temp/0128d0f6-fa03-45af-b8b7-702281e000b1' before making global git config changes
2024-04-29T15:05:12.5882081Z Adding repository directory to the temporary git global config as a safe directory
2024-04-29T15:05:12.5890781Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/cpp-configurations/cpp-configurations
2024-04-29T15:05:12.5944662Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2024-04-29T15:05:12.5989987Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2024-04-29T15:05:12.6264851Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2024-04-29T15:05:12.6283226Z http.https://github.com/.extraheader
2024-04-29T15:05:12.6294638Z [command]/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
2024-04-29T15:05:12.6331726Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2024-04-29T15:05:12.6898497Z Cleaning up orphan processes
