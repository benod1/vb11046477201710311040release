.class final Lcom/google/android/gms/internal/zzgc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzxw:Lcom/google/android/gms/internal/zzfu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgc;->zzxw:Lcom/google/android/gms/internal/zzfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaka;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzxw:Lcom/google/android/gms/internal/zzfu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfu;->zza(Lcom/google/android/gms/internal/zzfu;)Lcom/google/android/gms/internal/zzfi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzfi;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJi:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzrd;->zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V

    goto :goto_0
.end method
