.class Lcom/cupertino/cordova/plugin/AdMob$6;
.super Ljava/lang/Object;
.source "AdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cupertino/cordova/plugin/AdMob;->executeShowAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 410
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iput-object p2, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 413
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerVisible:Z
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$400(Lcom/cupertino/cordova/plugin/AdMob;)Z

    move-result v4

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerShow:Z
    invoke-static {v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$1000(Lcom/cupertino/cordova/plugin/AdMob;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 474
    :goto_0
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v4}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 475
    :cond_0
    return-void

    .line 415
    :cond_1
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerShow:Z
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1000(Lcom/cupertino/cordova/plugin/AdMob;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 416
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 417
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 419
    :cond_2
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerOverlap:Z
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1100(Lcom/cupertino/cordova/plugin/AdMob;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 420
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 423
    .local v2, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerAtTop:Z
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1200(Lcom/cupertino/cordova/plugin/AdMob;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xa

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 425
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1300(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-nez v4, :cond_3

    .line 426
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v6, v6, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4, v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$1302(Lcom/cupertino/cordova/plugin/AdMob;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 427
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 429
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    :try_start_0
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v4, v4, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getView"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v5, v5, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$1300(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1300(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/widget/RelativeLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1300(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 466
    .end local v2    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_3
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 467
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerVisible:Z
    invoke-static {v4, v9}, Lcom/cupertino/cordova/plugin/AdMob;->access$402(Lcom/cupertino/cordova/plugin/AdMob;Z)Z

    goto/16 :goto_0

    .line 423
    .restart local v2    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/16 v4, 0xc

    goto :goto_1

    .line 430
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v4, v4, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$1300(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 438
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->CORDOVA_MIN_4:Z
    invoke-static {}, Lcom/cupertino/cordova/plugin/AdMob;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 439
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->getWebView()Landroid/view/View;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1500(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 440
    .local v3, "wvParentView":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_6

    .line 441
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v6, v6, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4, v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$1602(Lcom/cupertino/cordova/plugin/AdMob;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 443
    :cond_6
    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 444
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->getWebView()Landroid/view/View;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1500(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 445
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 446
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->getWebView()Landroid/view/View;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1500(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->getWebView()Landroid/view/View;
    invoke-static {v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$1500(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 449
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v4, v4, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 457
    .end local v3    # "wvParentView":Landroid/view/ViewGroup;
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerAtTop:Z
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1200(Lcom/cupertino/cordova/plugin/AdMob;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 458
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 462
    :goto_5
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->bringToFront()V

    .line 463
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_3

    .line 453
    :cond_8
    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v4, v4, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v5, v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1602(Lcom/cupertino/cordova/plugin/AdMob;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    goto :goto_4

    .line 460
    :cond_9
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v5}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 470
    :cond_a
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 471
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$6;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # setter for: Lcom/cupertino/cordova/plugin/AdMob;->bannerVisible:Z
    invoke-static {v4, v8}, Lcom/cupertino/cordova/plugin/AdMob;->access$402(Lcom/cupertino/cordova/plugin/AdMob;Z)Z

    goto/16 :goto_0
.end method
