.class Lwz;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lwy;

.field private b:I

.field private c:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lwy;)V
    .locals 1

    iput-object p1, p0, Lwz;->a:Lwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lwz;->c:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lwz;->b:I

    return v0
.end method

.method public a(Lwq;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lwz;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lwz;->a:Lwy;

    invoke-virtual {v3}, Lwy;->q()Lyr;

    move-result-object v3

    invoke-virtual {v3}, Lyr;->m()I

    move-result v3

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lwz;->a:Lwy;

    invoke-virtual {v0, p1, v1}, Lwy;->a(Lwq;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lwz;->a:Lwy;

    invoke-virtual {v0}, Lwy;->p()Lww;

    move-result-object v0

    const-string v1, "Error formatting hit"

    invoke-virtual {v0, p1, v1}, Lww;->a(Lwq;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v3

    iget-object v4, p0, Lwz;->a:Lwy;

    invoke-virtual {v4}, Lwy;->q()Lyr;

    move-result-object v4

    invoke-virtual {v4}, Lyr;->e()I

    move-result v4

    if-le v0, v4, :cond_2

    iget-object v0, p0, Lwz;->a:Lwy;

    invoke-virtual {v0}, Lwy;->p()Lww;

    move-result-object v0

    const-string v1, "Hit size exceeds the maximum size limit"

    invoke-virtual {v0, p1, v1}, Lww;->a(Lwq;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lwz;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-lez v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v4, p0, Lwz;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lwz;->a:Lwy;

    invoke-virtual {v4}, Lwy;->q()Lyr;

    move-result-object v4

    invoke-virtual {v4}, Lyr;->g()I

    move-result v4

    if-le v0, v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lwz;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lwz;->c:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lwy;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_5
    iget-object v0, p0, Lwz;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lwz;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lwz;->b:I

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lwz;->a:Lwy;

    const-string v3, "Failed to write payload when batching hits"

    invoke-virtual {v1, v3, v0}, Lwy;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lwz;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
