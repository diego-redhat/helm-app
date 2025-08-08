mkdir -p temp/helm-demo/templates
cp -pr *.yaml temp/helm-demo
cp -pr templates/ temp/helm-demo/templates
helm package temp/helm-demo --destination repo/
helm repo index repo/
rm -rf temp/
echo "update git repo"
git add .
git commit -m "new helm version"
git push origin main
echo "update helm repo"
cd repo
helm push app-0.1.0.tgz oci://quay.io/doliveira1277/helm
