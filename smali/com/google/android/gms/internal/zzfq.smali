.class public final Lcom/google/android/gms/internal/zzfq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzxn:Lcom/google/android/gms/internal/zzfi;

.field private final zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

.field private final zzxp:Lcom/google/android/gms/internal/zzrd;

.field private final zzxq:Lcom/google/android/gms/internal/zzrd;

.field private final zzxr:Lcom/google/android/gms/internal/zzrd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/ads/internal/js/zzai;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfr;-><init>(Lcom/google/android/gms/internal/zzfq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxp:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzfs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfs;-><init>(Lcom/google/android/gms/internal/zzfq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxq:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzft;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/internal/zzfq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxr:Lcom/google/android/gms/internal/zzrd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq;->zzxn:Lcom/google/android/gms/internal/zzfi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfq;->zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzxp:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzxq:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "/visibilityChanged"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzxr:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "Custom JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxn:Lcom/google/android/gms/internal/zzfi;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfi;->zzwQ:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfg;->zzcm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/internal/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxn:Lcom/google/android/gms/internal/zzfi;

    return-object v0
.end method


# virtual methods
.method public final zzb(Lorg/json/JSONObject;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxn:Lcom/google/android/gms/internal/zzfi;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfi;->zzb(Lcom/google/android/gms/internal/zzgd;)V

    goto :goto_0
.end method

.method public final zzcy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzcz()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

    const-string v1, "/visibilityChanged"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzxr:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzxq:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzxp:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method
