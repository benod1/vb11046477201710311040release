.class Lcom/cupertino/cordova/plugin/AdMob$3;
.super Ljava/lang/Object;
.source "AdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cupertino/cordova/plugin/AdMob;->executeCreateInterstitialView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cupertino/cordova/plugin/AdMob;

.field final synthetic val$delayCallback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iput-object p2, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v2, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v2, v2, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0, v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$702(Lcom/cupertino/cordova/plugin/AdMob;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;

    .line 297
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$700(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->interstialAdId:Ljava/lang/String;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$800(Lcom/cupertino/cordova/plugin/AdMob;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$700(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/cupertino/cordova/plugin/AdMob$InterstitialListener;

    iget-object v2, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cupertino/cordova/plugin/AdMob$InterstitialListener;-><init>(Lcom/cupertino/cordova/plugin/AdMob;Lcom/cupertino/cordova/plugin/AdMob$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 299
    const-string v0, "interstitial"

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->interstialAdId:Ljava/lang/String;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$800(Lcom/cupertino/cordova/plugin/AdMob;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$700(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$500(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 302
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$3;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 304
    return-void
.end method
