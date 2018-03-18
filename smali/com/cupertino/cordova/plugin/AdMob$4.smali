.class Lcom/cupertino/cordova/plugin/AdMob$4;
.super Ljava/lang/Object;
.source "AdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cupertino/cordova/plugin/AdMob;->executeRequestAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 358
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob$4;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iput-object p2, p0, Lcom/cupertino/cordova/plugin/AdMob$4;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$4;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$4;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$500(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 363
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$4;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 364
    return-void
.end method
