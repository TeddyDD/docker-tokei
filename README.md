# tokei Dockerfile
[This repository](https://github.com/mbologna/docker-tokei/) contains **Dockerfile** of [*tokei*](https://github.com/Aaronepower/tokei/), for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/mbologna/docker-tokei/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker image

* rust:1.32

## Usage

* Identify the path containing the code you want to analyze

* Launch the container by supplying the path as a volume in read only mode:

        % docker run -v `pwd`:/data:ro mbologna/docker-tokei         


        -------------------------------------------------------------------------------
        Language            Files        Lines         Code     Comments       Blanks
        -------------------------------------------------------------------------------
        Dockerfile              1            7            5            0            2
        Markdown                1           47           47            0            0
        -------------------------------------------------------------------------------
        Total                   2           54           52            0            2
        -------------------------------------------------------------------------------

* You can also use `tokei` options:

        % docker run -v ~/Development/docker-tokei:/data:ro mbologna/docker-tokei tokei --sort lines
        -------------------------------------------------------------------------------
        Language            Files        Lines         Code     Comments       Blanks
        -------------------------------------------------------------------------------
        Markdown                1           31           31            0            0
        Dockerfile              1            7            5            0            2
        -------------------------------------------------------------------------------
        Total                   2           38           36            0            2
        -------------------------------------------------------------------------------
