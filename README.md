
## 🚀 Getting Started

⭕️ [**VIDEO DEMO**](https://youtu.be/VCAs4d3j_2I)

### Instalación

Para ejecutar el proyecto de manera sencilla, solo necesitas tener el gestor de paquetes [Nix](https://nixos.org/download/#nix-install-linux) instalado en tu sistema. Puedes hacerlo ejecutando el siguiente comando:

**Linux & Windows**

```bash
$ sudo sh <(curl -L https://nixos.org/nix/install) --daemon
```

**MacOS**

```bash
$ sh <(curl -L https://nixos.org/nix/install)
```

### 💻 Ejecución del Proyecto
Una vez que tengas Nix instalado, puedes ejecutar el resto de los ejercicios de este laboratorio.

Los siguientes comandos crearán un entorno shell con todas las dependencias necesarias para ejecutar el proyecto, de manera similar a lo que hace Docker.

```bash
nix develop --experimental-features 'nix-command flakes'
cabal run
```