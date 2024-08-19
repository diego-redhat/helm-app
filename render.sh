mkdir -p temp/helm-demo
cp -pr *.yaml  templates/ temp/helm-demo
helm package temp/helm-demo --destination repo/
helm repo index repo/
rm -rf temp/
git add .
git commit -m "new helm version"
git push origin main
