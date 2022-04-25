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
							"ssoEndpoint: " + parameter.SSO_ENDPOINT,
						
							"accessToken: " + parameter.ACCESS_TOKEN,

                            "cmpEndpoint: " + parameter.CMP_ENDPOINT,
						
							"cmpClientSecret: " + parameter.CMP_CLIENT_SECRET,
						], "\n")
	}
}

