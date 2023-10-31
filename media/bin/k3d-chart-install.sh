#helm --kube-context k3d-ncrmro-charts --namespace media uninstall media
helm --kube-context k3d-ncrmro-charts --namespace media upgrade --install --create-namespace --wait --debug media .. \
--set global.persistence.media.storageClass=local-path \
--set jellyfin.persistence.data.storageClass=local-path \
--set jellyfin.persistence.temp.storageClass=local-path \
--set jellyfin.ingress.enabled=true
helm --kube-context k3d-ncrmro-charts --namespace media test media