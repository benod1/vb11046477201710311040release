.class public Lcom/cupertino/cordova/plugin/AdMob$BasicListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cupertino/cordova/plugin/AdMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BasicListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cupertino/cordova/plugin/AdMob;


# direct methods
.method public constructor <init>(Lcom/cupertino/cordova/plugin/AdMob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob$BasicListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$BasicListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v0, v0, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "javascript:cordova.fireDocumentEvent(\'onFailedToReceiveAd\', { \'error\': %d, \'reason\':\'%s\' });"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 537
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob$BasicListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    invoke-virtual {v4, p1}, Lcom/cupertino/cordova/plugin/AdMob;->getErrorReason(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 535
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$BasicListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v0, v0, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "javascript:cordova.fireDocumentEvent(\'onLeaveToAd\');"

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 543
    return-void
.end method
