return
{
	-- Cargo Ships can decide to not register "deep oil" as well as the oil rig and its sub-entities if it thinks it shouldn't (such as if omnimatter is present)
	-- these first few files manually duplicate that effort so GUFT can use them

	-- these two files are copied wholesale from Cargo Ships except that there's an added if to only add their content if Cargo Ships didn't

	"mod-source.oil_rig",
	"mod-source.resources",

	-- these three are a subsection of their source files that's controlled by Cargo Ships' deep oil setting

	"mod-source.item_subset",
	"mod-source.recipe_subset",
	"mod-source.technologies_subset",

	-- now, GUFT's own content

	"prototypes.deep-sea-fissure",
	"prototypes.deep-sea-gas",
	"prototypes.deep-sea-gas-rig",
}