.class final Lcom/google/android/gms/internal/zztn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzKr:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzto;",
            ">;"
        }
    .end annotation
.end field

.field private zzKs:Lcom/google/android/gms/internal/zzir;

.field private final zzKt:I

.field private zzKu:Z

.field private final zztV:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzir;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztn;->zzKr:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zztn;->zzKs:Lcom/google/android/gms/internal/zzir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zztn;->zztV:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zztn;->zzKt:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zztn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztn;->zztV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zztn;)Lcom/google/android/gms/internal/zzir;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztn;->zzKs:Lcom/google/android/gms/internal/zzir;

    return-object v0
.end method


# virtual methods
.method final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztn;->zztV:Ljava/lang/String;

    return-object v0
.end method

.method final getNetworkType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztn;->zzKt:I

    return v0
.end method

.method final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztn;->zzKr:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzsi;Lcom/google/android/gms/internal/zzir;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzto;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzto;-><init>(Lcom/google/android/gms/internal/zztn;Lcom/google/android/gms/internal/zzsi;Lcom/google/android/gms/internal/zzir;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zztn;->zzKr:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzsi;)Z
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzto;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzto;-><init>(Lcom/google/android/gms/internal/zztn;Lcom/google/android/gms/internal/zzsi;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zztn;->zzKr:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzto;->load()Z

    move-result v0

    return v0
.end method

.method final zzeI()Lcom/google/android/gms/internal/zzir;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztn;->zzKs:Lcom/google/android/gms/internal/zzir;

    return-object v0
.end method

.method final zzeJ()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zztn;->zzKr:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzto;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzto;->zzKz:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final zzeK()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zztn;->zzKr:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzto;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzto;->load()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final zzeL()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztn;->zzKu:Z

    return-void
.end method

.method final zzeM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztn;->zzKu:Z

    return v0
.end method

.method final zzm(Lcom/google/android/gms/internal/zzir;)Lcom/google/android/gms/internal/zzto;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzir;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zztn;->zzKs:Lcom/google/android/gms/internal/zzir;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztn;->zzKr:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzto;

    return-object v0
.end method
