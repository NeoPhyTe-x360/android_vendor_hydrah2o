# Get proprietary files
PATH=$PATH:$PWD/vendor/hydrah2o/tools ; export PATH
VENDOR=$PWD/vendor/hydrah2o
if [ ! -d "vendor/osr/proprietary" ]; then
echo "Get proprietary files"
vendor/hydrah2o/./get-prebuilts
fi

