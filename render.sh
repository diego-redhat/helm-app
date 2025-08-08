mkdir -p temp/helm-demo/templates
cp -pr *.yaml temp/helm-demo
cp -pr templates/ temp/helm-demo/templates
helm package temp/helm-demo --destination repo/
helm repo index repo/
rm -rf temp/
git add .
git commit -m "new helm version"
git push origin main
