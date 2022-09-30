# HOW TO USE

## Initialise your git repository

* clone this repository
```
git clone --recurse-submodules https://github.com/sporniket/seed-kicad.git your_project
cd your_project/kicad-symbols-generated
make
cd ..
```
* Change the remote `origin` to your repository
```
git remote set-url origin https://your.repository/full/path/your_project.git
```
* Or remove the remote `origin`
```
git remote rm origin
```

* Replace this readme file by the template for a project readme, and edit to use your project name and repository url.

```
mv README-template.md README.md
sed -i.bak \
	-e 's/{HUMAN_READABLE_PROJECT_NAME}/My greatest project of all time/g' \
	-e 's+{GITHUB_USER__REPOSITORY}+foo/bar+g' \
	-e 's/{SPECIFIC TOOL}/something/g' \
	README-template.md
```

## Initialise a new Kicad project

* Start Kicad
* Create a new project located in your working copy of your git repository, or a new subfolder if you plan to manage several projects
* Add the various libraries (symbols, footprints and 3d shapes) as project specific libraries.
