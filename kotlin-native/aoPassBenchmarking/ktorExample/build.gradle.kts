repositories {
    mavenCentral()
    maven { url = uri("https://maven.pkg.jetbrains.space/public/p/ktor/eap") }
}

plugins {
    application
    kotlin("multiplatform") version "1.9.0"
}

kotlin {
    val hostOs = System.getProperty("os.name")
    val arch = System.getProperty("os.arch")
    val nativeTarget = when {
        hostOs == "Mac OS X" && arch == "x86_64" -> macosX64("native")
        hostOs == "Mac OS X" && arch == "aarch64" -> macosArm64("native")
        hostOs == "Linux" -> linuxX64("native")
        // Other supported targets are listed here: https://ktor.io/docs/native-server.html#targets
        else -> throw GradleException("Host OS is not supported in Kotlin/Native.")
    }

    nativeTarget.apply {
        binaries {
            executable {
                entryPoint = "main"
            }
        }
    }
    sourceSets {
        val nativeMain by getting {
            dependencies {
                implementation("io.ktor:ktor-server-core:2.3.3")
                implementation("io.ktor:ktor-server-cio:2.3.3")
            }
        }
        val nativeTest by getting {
            dependencies {
                implementation(kotlin("test"))
                implementation("io.ktor:ktor-server-test-host:2.3.3")
            }
        }
    }
}
