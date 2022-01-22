import ProjectDescription
import ProjectDescriptionHelpers

/*
                +-------------+
                |             |
                |     App     | Contains Manuel App target and Manuel unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
//let project = Project.app(name: "Manuel",
//                          platform: .iOS,
//                          additionalTargets: ["ManuelKit", "ManuelUI","Basket"])
//
////
let maintTarget = Target(name: "Home",
                         platform: .iOS,
                         product: .app,
                         bundleId: "com.melih.tuist",
                         deploymentTarget: .iOS(targetVersion: "10.0", devices: .iphone),
                         infoPlist: .default,
                         sources: "Home/Sources/**",
                         resources: "Home/Resources/**",
                         dependencies: [
                            .project(target: "Basket", path: .relativeToRoot("Basket"))
                         ]
)

let project = Project(name: "Home",
                      targets: [maintTarget]

)

//let module = Project.createModulde(name: "Manuel", platform: .iOS, dependencies: [.project(target: "Basket", path: .relativeToRoot("Basket"))])
