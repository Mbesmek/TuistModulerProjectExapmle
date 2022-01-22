import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/

extension Project {
    /// Helper function to create the Project for this ExampleApp
    
    public static func createModulde(name: String, platform: Platform, dependencies: [TargetDependency]) -> Project{
        let  targets = createModuleTargets(name: name, platform: platform, dependencies: dependencies)
        return Project(name: name,
                       targets: targets
        )
    }
    
    private static func createModuleTargets(name: String, platform: Platform, dependencies: [TargetDependency]) -> [Target] {
       
        let target = Target(name: name,
                            platform: platform,
                            product: .framework,
                            bundleId: "io.tuist.\(name)",
                            deploymentTarget: .iOS(targetVersion: "10.0", devices: .iphone),
                            infoPlist: .default,
                            sources: "Sources/**",
                            resources: "Resources/**",
                            dependencies:dependencies)
        
        return [target]
        
    }
    
}
