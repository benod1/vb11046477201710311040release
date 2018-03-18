.class Lcom/cupertino/cordova/plugin/AdMob$5;
.super Ljava/lang/Object;
.source "AdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cupertino/cordova/plugin/AdMob;->executeRequestInterstitialAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 379
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob$5;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iput-object p2, p0, Lcom/cupertino/cordova/plugin/AdMob$5;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$5;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$700(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$5;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$500(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 384
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$5;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 385
    return-void
.end method
