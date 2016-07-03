{
    "target":[
        {
            "target_name":"default",
            "ref_asm":[
                "Newtonsoft.Json.dll"
            ],
            "lnk_files":[

            ],
            "ref_packs":[

            ],
            "recipes":[
                {
                    "recipe_name":"default",
                    "command_only":false,
                    "recipe_data":[
                        {
                            "commands":[
                                "sudo mkbundle build/smake.exe build/Newtonsoft.Json.dll -o /bin/smake",
                                "sudo chmod +x /bin/smake"
                            ],
                            "is_post":true
                        }
                    ]
                }
            ],
            "output":"smake",
            "output_type":"exe",
            "unsafe_code":false,
            "platform":"any",
            "code_root":"code/",
            "lib_dir":"libs/",
            "output_dir":"build/",
            "sequencial_naming":false
        },
        {
            "target_name":"clean",
            "recipes":[
                {
                    "recipe_name":"clean",
                    "command_only":true,
                    "recipe_data":[
                        {
                            "commands":["smake --clean"],
                            "is_post":true
                        }
                    ]
                }
            ]
        },
        {
            "target_name":"all",
            "recipes":[
                {
                    "recipe_name":"all",
                    "command_only":true,
                    "recipe_data":[
                        {
                            "commands":["smake"],
                            "is_post":true
                        },
                        {
                            "commands":["smake clean"],
                            "is_post":true
                        }
                    ]
                }
            ]
        },
        {
            "target_name":"commit",
            "recipes":[
                {
                    "recipe_name":"commit",
                    "command_only":true,
                    "recipe_data":[
                        {
                            "commands":[
                                "git add --all",
                                "bash message=$(dialog --inputbox \"Enter commit message:\" 6 70 2 2>&1 1>&3)",
                                "git commit -m $message",
                                "git push"
                            ],
                            "is_post":false
                        }
                    ]
                }
            ]
        }
    ]
}
