using System.Collections.Generic;

namespace SharpMake.Data
{
    public class RecipeData
    {
        public List<string> commands { get; set; }
        public bool is_post { get; set; }
    }

    public class Recipes
    {
        public string recipe_name { get; set; }
        public bool command_only { get; set; }
        public List<RecipeData> recipe_data { get; set; }
    }

    public class Target
    {
        public string target_name { get; set; }
        public List<string> ref_asm { get; set; }
        public List<object> lnk_files { get; set; }
        public List<object> ref_packs { get; set; }
        public List<Recipes> recipes { get; set; }
        public string output { get; set; }
        public string output_type { get; set; }
        public bool unsafe_code { get; set; }
        public string platform { get; set; }
        public string code_root { get; set; }
        public string lib_dir { get; set; }
        public string output_dir { get; set; }
        public bool sequencial_naming { get; set; }
    }

    public class MakefileData
    {
        public List<Target> target { get; set; }
    }
}
