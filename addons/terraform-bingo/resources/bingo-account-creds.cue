import "strings"

output: {
	type: "raw"
	properties: {
		apiVersion: "v1"
		kind:       "Secret"
		metadata: {
			name:      "bingo-account-creds"
			namespace: "vela-system"
		}
		type: "Opaque"
		stringData: credentials: strings.Join([
							"iamEndpoint: " + parameter.IAM_ENDPOINT,

							"cmpEndpoint: " + parameter.CMP_ENDPOINT,

						    "iamClientId: " + parameter.IAM_CLIENT_ID,

							"iamClientSecret: " + parameter.IAM_CLIENT_SECRET,
						
							"userName: " + parameter.USER_NAME,

							"password: " + parameter.PASSWORD,
						], "\n")
	}
}

