.class Lcom/cupertino/cordova/plugin/AdMob$7;
.super Ljava/lang/Object;
.source "AdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cupertino/cordova/plugin/AdMob;->executeShowInterstitialAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cupertino/cordova/plugin/AdMob;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob$7;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iput-object p2, p0, Lcom/cupertino/cordova/plugin/AdMob$7;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$7;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$700(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$7;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$700(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$7;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$7;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 499
    :cond_0
    return-void

    .line 494
    :cond_1
    const-string v0, "Interstitial"

    const-string v1, "Interstital not ready yet, temporarily setting autoshow."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$7;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    const/4 v1, 0x1

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->autoShowInterstitialTemp:Z
    invoke-static {v0, v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$1702(Lcom/cupertino/cordova/plugin/AdMob;Z)Z

    goto :goto_0
.end method
