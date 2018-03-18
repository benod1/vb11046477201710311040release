.class Lcom/cupertino/cordova/plugin/AdMob$1;
.super Ljava/lang/Object;
.source "AdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cupertino/cordova/plugin/AdMob;->executeCreateBannerView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 218
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iput-object p2, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    new-instance v1, Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v2, v2, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0, v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$002(Lcom/cupertino/cordova/plugin/AdMob;Lcom/google/android/gms/ads/AdView;)Lcom/google/android/gms/ads/AdView;

    .line 224
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->publisherId:Ljava/lang/String;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$100(Lcom/cupertino/cordova/plugin/AdMob;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adSize:Lcom/google/android/gms/ads/AdSize;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$200(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 226
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    new-instance v1, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;

    iget-object v2, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    invoke-direct {v1, v2, v3}, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;-><init>(Lcom/cupertino/cordova/plugin/AdMob;Lcom/cupertino/cordova/plugin/AdMob$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    const/4 v1, 0x0

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerVisible:Z
    invoke-static {v0, v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$402(Lcom/cupertino/cordova/plugin/AdMob;Z)Z

    .line 233
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$500(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 236
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    const/4 v1, 0x1

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->executeShowAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    invoke-static {v0, v1, v3}, Lcom/cupertino/cordova/plugin/AdMob;->access$600(Lcom/cupertino/cordova/plugin/AdMob;ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    .line 238
    const-string v0, "banner"

    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->publisherId:Ljava/lang/String;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$100(Lcom/cupertino/cordova/plugin/AdMob;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 241
    return-void
.end method
