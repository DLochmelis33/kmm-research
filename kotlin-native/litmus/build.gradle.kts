plugins {
    kotlin("multiplatform") version "1.8.0"
}

group = "me.denis"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

kotlin {
    val hostOs = System.getProperty("os.name")
    val isMingwX64 = hostOs.startsWith("Windows")
    val nativeTarget = when {
        hostOs == "Mac OS X" -> macosX64("native")
        hostOs == "Linux" -> linuxX64("native")
        isMingwX64 -> mingwX64("native")
        else -> throw GradleException("Host OS is not supported in Kotlin/Native.")
    }

    nativeTarget.apply {
        compilations.getByName("main") {
            cinterops {
                exec {
                    commandLine(
                            "gcc",
                            "src/nativeInterop/kaffinity_gnu.c",
                            "-c",
                            "-o",
                            "~/.kaffinity/kaffinity_gnu.o"
                    )
                }
                val affinity by creating {
                    defFile(project.file("src/nativeInterop/kaffinity.def"))
                    headers(project.file("src/nativeInterop/kaffinity.h"))
                }
            }
        }
        binaries {
            executable {
                entryPoint = "main"
            }
        }
    }
    sourceSets {
        val nativeMain by getting
        val nativeTest by getting
    }
}
