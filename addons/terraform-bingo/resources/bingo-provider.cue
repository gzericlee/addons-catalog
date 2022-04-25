output: {
	type: "raw"
	properties: {
		apiVersion: "terraform.core.oam.dev/v1beta1"
		kind:       "Provider"
		metadata: {
			name:      "bingo"
			namespace: "default"
		}
		spec: {
			provider: "bingo"
			credentials: {
				source: "Secret"
				secretRef: {
					namespace: "vela-system"
					name:      "bingo-account-creds"
					key:       "credentials"
				}
			}
		}
	}
}
