.class final Lcom/google/android/gms/ads/internal/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic zzte:Lcom/google/android/gms/ads/internal/zzl;

.field private synthetic zztf:Lcom/google/android/gms/ads/internal/zzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zzw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zzte:Lcom/google/android/gms/ads/internal/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzn;->zztf:Lcom/google/android/gms/ads/internal/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zztf:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzw;->recordClick()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzte:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzl;->zztc:Lcom/google/android/gms/internal/zzaet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn;->zzte:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzl;->zztc:Lcom/google/android/gms/internal/zzaet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaet;->zzha()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
