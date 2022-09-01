version="latest"
 echo "arey babai ochesava"
commands=(
    "cd vanalyticsv3-ui; sh build_report_ui.sh; docker save -o ../artifacts/v3-report-ui.tar v3-report-ui:latest; cd ..; gzip artifacts/v3-report-ui.tar;"
)
for cmd in "${commands[@]}"
do
  echo "======> Running command: " $cmd
  eval $cmd
done