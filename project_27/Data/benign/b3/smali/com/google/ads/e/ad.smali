.class public abstract Lcom/google/ads/e/ad;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/Object;

.field protected final b:Ljava/lang/String;

.field final synthetic c:Lcom/google/ads/e/ab;


# direct methods
.method private constructor <init>(Lcom/google/ads/e/ab;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/e/ab;Ljava/lang/String;Lcom/google/ads/e/ac;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/e/ad;->c:Lcom/google/ads/e/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/e/ad;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/ads/e/ab;->a(Lcom/google/ads/e/ab;Lcom/google/ads/e/ad;)V

    iput-object p3, p0, Lcom/google/ads/e/ad;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;Lcom/google/ads/e/ac;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/ads/e/ad;->c:Lcom/google/ads/e/ab;

    invoke-virtual {v1}, Lcom/google/ads/e/ab;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/e/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/e/ad;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
