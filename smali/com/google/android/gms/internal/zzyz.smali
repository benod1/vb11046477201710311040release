.class final Lcom/google/android/gms/internal/zzyz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakg;


# instance fields
.field private synthetic zzSc:Lcom/google/android/gms/internal/zzyy;

.field private synthetic zzuA:Lcom/google/android/gms/internal/zzaka;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyy;Lcom/google/android/gms/internal/zzaka;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyz;->zzSc:Lcom/google/android/gms/internal/zzyy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyz;->zzuA:Lcom/google/android/gms/internal/zzaka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzj(Lcom/google/android/gms/internal/zzaka;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyz;->zzuA:Lcom/google/android/gms/internal/zzaka;

    const-string v1, "google.afma.nativeAds.renderVideo"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyz;->zzSc:Lcom/google/android/gms/internal/zzyy;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzyy;->zzRZ:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
