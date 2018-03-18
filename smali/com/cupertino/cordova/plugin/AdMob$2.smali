.class Lcom/cupertino/cordova/plugin/AdMob$2;
.super Ljava/lang/Object;
.source "AdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cupertino/cordova/plugin/AdMob;->executeDestroyBannerView(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 250
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iput-object p2, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 255
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v1}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 259
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    const/4 v2, 0x0

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v1, v2}, Lcom/cupertino/cordova/plugin/AdMob;->access$002(Lcom/cupertino/cordova/plugin/AdMob;Lcom/google/android/gms/ads/AdView;)Lcom/google/android/gms/ads/AdView;

    .line 261
    .end local v0    # "parentView":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    const/4 v2, 0x0

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerVisible:Z
    invoke-static {v1, v2}, Lcom/cupertino/cordova/plugin/AdMob;->access$402(Lcom/cupertino/cordova/plugin/AdMob;Z)Z

    .line 262
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob$2;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 264
    :cond_2
    return-void
.end method
