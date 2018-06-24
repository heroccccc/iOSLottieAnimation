# iOSLottieAnimation
## swiftでlottieを使用する

### lottieとは…  
* ####  リッチなアニメーションを単純に実装できるライブラリ
* ####  adobe after affectで作成したjsonデータのアニメーションを読み込み各アプリ(iOS,android…)に実装することができる
* ####  [こちらから](https://www.lottiefiles.com)様々なアニメーションデータをダウンロードできる

---
### 準備  
#### [こちら](https://note.mu/ohanamizuki/n/ne2e33e924011)を参考にさせていただきました。
#### 1.  アニメーションを使用したいプロジェクトまで移動する  
#### 2.  CocoaPodsでlottieライブラリをinstallする.以下のコマンドを実行
```
pod init
vim Podfile
```
#### Podfileの編集に関してはvimでなくてもOK.今回はvimで編集する  Podfileを開いて、**pod 'lottie-ios'** を追加.例えば、以下のように追加する
```
target 'iOSLottieAnimation' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  pod 'lottie-ios'

  # Pods for iOSLottieAnimation

  target 'iOSLottieAnimationTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'iOSLottieAnimationUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

```
#### 追加を終えたら、以下のコマンドを実行
```
pod install
```
#### 3.  Bridging-Headerファイルの準備
#### プロジェクト内に存在する **プロジェクト名.xcworkspace** を(Xcodeで)開く
#### プロジェクト内に、Bridging-Headerファイルを追加する.
<img src="https://github.com/heroccccc/iOSLottieAnimation/blob/master/images/createHeader_1.png"
 width="200" />
#### 追加する時、New FileからObjective-Cを選択し、ファイル名をBridging-Header.hとする．Finishボタンを押すと、ダイアログが出てくるが、Create Bridging Headerを選択する
<img src="https://github.com/heroccccc/iOSLottieAnimation/blob/master/images/createHeader_2.png"
 width="200" />
#### 追加された **プロジェクト名-Bridging-Header.h** に、以下を追加する
```
#import <Lottie/Lottie.h>
```

### これで準備完了！！！
<img src="https://github.com/heroccccc/iOSLottieAnimation/blob/master/images/fileList.png"
 width="200" />
---
### 使用方法
#### 1.  アニメーションを使用したいswiftのファイル(ViewController.swiftなど)に書き込んでいく．lottieライブラリをimport
```
import Lottie
```
#### 2. 使用したいアニメーションのjsonファイルをプロジェクト内に追加する．[こちらから](https://www.lottiefiles.com)ダウンロードできます．
#### 3. viewDidLoad()にアニメーションのインスタンスを生成する．ここで色々アニメーションのパラメータをいじることで、表示時間などの変更が可能(ここでは省略)．以下の通りに追加する．(例)
```
override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    //アニメーションのインスタンス
    let animation = LOTAnimationView(name: "laugh.json")

    //表示位置を設定
    animation.frame = CGRect(x: 150, y: 100, width: 100, height: 100)

    //パラメータの一つ、アニメーションをループする
    animation.loopAnimation = true

    //#view(画面)上にアニメーションを追加
    view.addSubview(animation)

    //アニメーションの開始
    animation.play()

}
```
#### 4. ビルドして確認
### lottie実装完了！！！
---
### このように、比較的単純にリッチなアニメーションを実装できる
<img src="https://github.com/heroccccc/iOSLottieAnimation/blob/master/images/sampleAnimation.png"
 width="200" />
