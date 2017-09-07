{
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v17",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "v1.0",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool"
        },
        {
            "default": 4,
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "inputBinding": {
                "separate": true,
                "position": 2
            }
        },
        {
            "default": "out",
            "inputBinding": {
                "separate": true,
                "position": 3
            },
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            },
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}