.class final Lbhx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lbhs;

.field b:I

.field c:I

.field d:Lbhj;

.field e:Lbhj;

.field f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lbaz;

.field private i:I

.field private j:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbhx;->g:Ljava/util/List;

    .line 114
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbhx;->h:Lbaz;

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [Lbhs;

    iput-object v0, p0, Lbhx;->a:[Lbhs;

    .line 121
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbhx;->b:I

    .line 122
    iput v1, p0, Lbhx;->c:I

    .line 128
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    iput-object v0, p0, Lbhx;->d:Lbhj;

    .line 133
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    iput-object v0, p0, Lbhx;->e:Lbhj;

    .line 134
    iput v1, p0, Lbhx;->f:I

    .line 137
    iput p1, p0, Lbhx;->i:I

    .line 138
    iput p1, p0, Lbhx;->j:I

    .line 139
    return-void
.end method

.method private a(ILbhs;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 334
    iget v0, p2, Lbhs;->j:I

    .line 335
    if-eq p1, v3, :cond_4

    .line 336
    iget-object v1, p0, Lbhx;->a:[Lbhs;

    invoke-direct {p0, p1}, Lbhx;->d(I)I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lbhs;->j:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 340
    :goto_0
    iget v0, p0, Lbhx;->j:I

    if-le v1, v0, :cond_0

    .line 341
    invoke-direct {p0}, Lbhx;->f()V

    .line 343
    iget-object v0, p0, Lbhx;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :goto_1
    return-void

    .line 348
    :cond_0
    iget v0, p0, Lbhx;->f:I

    add-int/2addr v0, v1

    iget v2, p0, Lbhx;->j:I

    sub-int/2addr v0, v2

    .line 349
    invoke-direct {p0, v0}, Lbhx;->b(I)I

    move-result v0

    .line 351
    if-ne p1, v3, :cond_3

    .line 352
    iget v0, p0, Lbhx;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lbhx;->a:[Lbhs;

    array-length v2, v2

    if-le v0, v2, :cond_2

    .line 353
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [Lbhs;

    .line 354
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    const/4 v3, 0x0

    iget-object v4, p0, Lbhx;->a:[Lbhs;

    array-length v4, v4

    iget-object v5, p0, Lbhx;->a:[Lbhs;

    array-length v5, v5

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    array-length v0, v2

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    .line 356
    iget-object v0, p0, Lbhx;->d:Lbhj;

    check-cast v0, Lbhl;

    invoke-virtual {v0}, Lbhl;->b()Lbhj;

    move-result-object v0

    iput-object v0, p0, Lbhx;->d:Lbhj;

    .line 357
    iget-object v0, p0, Lbhx;->e:Lbhj;

    check-cast v0, Lbhl;

    invoke-virtual {v0}, Lbhl;->b()Lbhj;

    move-result-object v0

    iput-object v0, p0, Lbhx;->e:Lbhj;

    .line 360
    :cond_1
    iget-object v0, p0, Lbhx;->d:Lbhj;

    iget-object v3, p0, Lbhx;->a:[Lbhs;

    array-length v3, v3

    invoke-interface {v0, v3}, Lbhj;->d(I)V

    .line 361
    iget-object v0, p0, Lbhx;->e:Lbhj;

    iget-object v3, p0, Lbhx;->a:[Lbhs;

    array-length v3, v3

    invoke-interface {v0, v3}, Lbhj;->d(I)V

    .line 362
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbhx;->b:I

    .line 363
    iput-object v2, p0, Lbhx;->a:[Lbhs;

    .line 365
    :cond_2
    iget v0, p0, Lbhx;->b:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lbhx;->b:I

    .line 366
    iget-object v2, p0, Lbhx;->d:Lbhj;

    invoke-interface {v2, v0}, Lbhj;->a(I)V

    .line 367
    iget-object v2, p0, Lbhx;->a:[Lbhs;

    aput-object p2, v2, v0

    .line 368
    iget v0, p0, Lbhx;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbhx;->c:I

    .line 374
    :goto_2
    iget v0, p0, Lbhx;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lbhx;->f:I

    goto :goto_1

    .line 370
    :cond_3
    invoke-direct {p0, p1}, Lbhx;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 371
    iget-object v2, p0, Lbhx;->d:Lbhj;

    invoke-interface {v2, v0}, Lbhj;->a(I)V

    .line 372
    iget-object v2, p0, Lbhx;->a:[Lbhs;

    aput-object p2, v2, v0

    goto :goto_2

    :cond_4
    move v1, v0

    goto/16 :goto_0
.end method

.method private b(I)I
    .locals 6

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 185
    if-lez p1, :cond_1

    .line 187
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lbhx;->b:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    .line 188
    iget-object v2, p0, Lbhx;->a:[Lbhs;

    aget-object v2, v2, v0

    iget v2, v2, Lbhs;->j:I

    sub-int/2addr p1, v2

    .line 189
    iget v2, p0, Lbhx;->f:I

    iget-object v3, p0, Lbhx;->a:[Lbhs;

    aget-object v3, v3, v0

    iget v3, v3, Lbhs;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lbhx;->f:I

    .line 190
    iget v2, p0, Lbhx;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbhx;->c:I

    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lbhx;->d:Lbhj;

    invoke-interface {v0, v1}, Lbhj;->d(I)V

    .line 194
    iget-object v0, p0, Lbhx;->e:Lbhj;

    invoke-interface {v0, v1}, Lbhj;->d(I)V

    .line 195
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    iget v2, p0, Lbhx;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lbhx;->a:[Lbhs;

    iget v4, p0, Lbhx;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lbhx;->c:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget v0, p0, Lbhx;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lbhx;->b:I

    .line 199
    :cond_1
    return v1
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lbhx;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget v0, p0, Lbhx;->c:I

    sub-int v0, p1, v0

    .line 269
    invoke-static {}, Lbhw;->a()[Lbhs;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 270
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header index too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    invoke-static {}, Lbhw;->a()[Lbhs;

    move-result-object v1

    aget-object v0, v1, v0

    .line 273
    iget v1, p0, Lbhx;->j:I

    if-nez v1, :cond_1

    .line 274
    iget-object v1, p0, Lbhx;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :goto_0
    return-void

    .line 276
    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lbhx;->a(ILbhs;)V

    goto :goto_0

    .line 279
    :cond_2
    invoke-direct {p0, p1}, Lbhx;->d(I)I

    move-result v0

    .line 280
    iget-object v1, p0, Lbhx;->d:Lbhj;

    invoke-interface {v1, v0}, Lbhj;->c(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 281
    iget-object v1, p0, Lbhx;->g:Ljava/util/List;

    iget-object v2, p0, Lbhx;->a:[Lbhs;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p0, Lbhx;->e:Lbhj;

    invoke-interface {v1, v0}, Lbhj;->a(I)V

    .line 284
    :cond_3
    iget-object v1, p0, Lbhx;->d:Lbhj;

    invoke-interface {v1, v0}, Lbhj;->b(I)V

    goto :goto_0
.end method

.method private d(I)I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lbhx;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lbhx;->j:I

    iget v1, p0, Lbhx;->f:I

    if-ge v0, v1, :cond_0

    .line 164
    iget v0, p0, Lbhx;->j:I

    if-nez v0, :cond_1

    .line 165
    invoke-direct {p0}, Lbhx;->f()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget v0, p0, Lbhx;->f:I

    iget v1, p0, Lbhx;->j:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lbhx;->b(I)I

    goto :goto_0
.end method

.method private e(I)V
    .locals 4

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lbhx;->g(I)Lbhn;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lbhx;->d()Lbhn;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lbhx;->g:Ljava/util/List;

    new-instance v3, Lbhs;

    invoke-direct {v3, v0, v1}, Lbhs;-><init>(Lbhn;Lbhn;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lbhx;->g()V

    .line 174
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbhx;->b:I

    .line 176
    iput v2, p0, Lbhx;->c:I

    .line 177
    iput v2, p0, Lbhx;->f:I

    .line 178
    return-void
.end method

.method private f(I)V
    .locals 4

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lbhx;->g(I)Lbhn;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lbhx;->d()Lbhn;

    move-result-object v1

    .line 309
    const/4 v2, -0x1

    new-instance v3, Lbhs;

    invoke-direct {v3, v0, v1}, Lbhs;-><init>(Lbhn;Lbhn;)V

    invoke-direct {p0, v2, v3}, Lbhx;->a(ILbhs;)V

    .line 310
    return-void
.end method

.method private g(I)Lbhn;
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lbhx;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lbhw;->a()[Lbhs;

    move-result-object v0

    iget v1, p0, Lbhx;->c:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lbhs;->h:Lbhn;

    .line 322
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    invoke-direct {p0, p1}, Lbhx;->d(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lbhs;->h:Lbhn;

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lbhx;->d:Lbhj;

    invoke-interface {v0}, Lbhj;->a()V

    .line 244
    iget-object v0, p0, Lbhx;->e:Lbhj;

    invoke-interface {v0}, Lbhj;->a()V

    .line 245
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Lbhx;->d()Lbhn;

    move-result-object v0

    invoke-static {v0}, Lbhw;->a(Lbhn;)Lbhn;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lbhx;->d()Lbhn;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lbhx;->g:Ljava/util/List;

    new-instance v3, Lbhs;

    invoke-direct {v3, v0, v1}, Lbhs;-><init>(Lbhn;Lbhn;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method private h(I)Z
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lbhx;->c:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p0}, Lbhx;->d()Lbhn;

    move-result-object v0

    invoke-static {v0}, Lbhw;->a(Lbhn;)Lbhn;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lbhx;->d()Lbhn;

    move-result-object v1

    .line 315
    const/4 v2, -0x1

    new-instance v3, Lbhs;

    invoke-direct {v3, v0, v1}, Lbhs;-><init>(Lbhn;Lbhn;)V

    invoke-direct {p0, v2, v3}, Lbhx;->a(ILbhs;)V

    .line 316
    return-void
.end method

.method private j()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lbhx;->h:Lbaz;

    invoke-virtual {v0}, Lbaz;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method a(II)I
    .locals 3

    .prologue
    .line 382
    and-int v0, p1, p2

    .line 383
    if-ge v0, p2, :cond_0

    .line 400
    :goto_0
    return v0

    .line 389
    :cond_0
    const/4 v0, 0x0

    .line 391
    :goto_1
    invoke-direct {p0}, Lbhx;->j()I

    move-result v1

    .line 392
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 393
    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 394
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 396
    :cond_1
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    .line 397
    goto :goto_0
.end method

.method a()V
    .locals 7

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    const/16 v4, 0x10

    const/16 v3, 0xf

    .line 208
    :goto_0
    iget-object v0, p0, Lbhx;->h:Lbaz;

    invoke-virtual {v0}, Lbaz;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    iget-object v0, p0, Lbhx;->h:Lbaz;

    invoke-virtual {v0}, Lbaz;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 210
    if-ne v0, v6, :cond_0

    .line 211
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-ne v1, v6, :cond_1

    .line 213
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lbhx;->a(II)I

    move-result v0

    .line 214
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lbhx;->c(I)V

    goto :goto_0

    .line 215
    :cond_1
    if-ne v0, v5, :cond_2

    .line 216
    invoke-direct {p0}, Lbhx;->i()V

    goto :goto_0

    .line 217
    :cond_2
    and-int/lit8 v1, v0, 0x40

    if-ne v1, v5, :cond_3

    .line 218
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lbhx;->a(II)I

    move-result v0

    .line 219
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lbhx;->f(I)V

    goto :goto_0

    .line 220
    :cond_3
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_8

    .line 221
    and-int/lit8 v1, v0, 0x10

    if-ne v1, v4, :cond_5

    .line 222
    and-int/lit8 v1, v0, 0xf

    if-eqz v1, :cond_4

    .line 223
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid header table state change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_4
    invoke-direct {p0}, Lbhx;->g()V

    goto :goto_0

    .line 226
    :cond_5
    invoke-virtual {p0, v0, v3}, Lbhx;->a(II)I

    move-result v0

    iput v0, p0, Lbhx;->j:I

    .line 227
    iget v0, p0, Lbhx;->j:I

    if-ltz v0, :cond_6

    iget v0, p0, Lbhx;->j:I

    iget v1, p0, Lbhx;->i:I

    if-le v0, v1, :cond_7

    .line 229
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header table byte count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbhx;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_7
    invoke-direct {p0}, Lbhx;->e()V

    goto/16 :goto_0

    .line 233
    :cond_8
    if-eq v0, v4, :cond_9

    if-nez v0, :cond_a

    .line 234
    :cond_9
    invoke-direct {p0}, Lbhx;->h()V

    goto/16 :goto_0

    .line 236
    :cond_a
    invoke-virtual {p0, v0, v3}, Lbhx;->a(II)I

    move-result v0

    .line 237
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lbhx;->e(I)V

    goto/16 :goto_0

    .line 240
    :cond_b
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 157
    iput p1, p0, Lbhx;->i:I

    .line 158
    iget v0, p0, Lbhx;->i:I

    iput v0, p0, Lbhx;->j:I

    .line 159
    invoke-direct {p0}, Lbhx;->e()V

    .line 160
    return-void
.end method

.method public a(Lbaz;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lbhx;->h:Lbaz;

    invoke-virtual {p1, v0}, Lbaz;->a(Lbaz;)V

    .line 143
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lbhx;->a:[Lbhs;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lbhx;->b:I

    if-eq v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lbhx;->d:Lbhj;

    invoke-interface {v1, v0}, Lbhj;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbhx;->e:Lbhj;

    invoke-interface {v1, v0}, Lbhj;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lbhx;->g:Ljava/util/List;

    iget-object v2, p0, Lbhx;->a:[Lbhs;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 253
    :cond_1
    return-void
.end method

.method c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbhx;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    iget-object v1, p0, Lbhx;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 262
    iget-object v1, p0, Lbhx;->e:Lbhj;

    invoke-interface {v1}, Lbhj;->a()V

    .line 263
    return-object v0
.end method

.method d()Lbhn;
    .locals 3

    .prologue
    .line 407
    invoke-direct {p0}, Lbhx;->j()I

    move-result v1

    .line 408
    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 409
    :goto_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v1, v2}, Lbhx;->a(II)I

    move-result v1

    .line 411
    if-eqz v0, :cond_1

    .line 412
    invoke-static {}, Lbif;->a()Lbif;

    move-result-object v0

    iget-object v2, p0, Lbhx;->h:Lbaz;

    invoke-virtual {v2, v1}, Lbaz;->a(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lbif;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lbhn;->a([B)Lbhn;

    move-result-object v0

    .line 414
    :goto_1
    return-object v0

    .line 408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lbhx;->h:Lbaz;

    invoke-virtual {v0, v1}, Lbaz;->a(I)[B

    move-result-object v0

    invoke-static {v0}, Lbhn;->a([B)Lbhn;

    move-result-object v0

    goto :goto_1
.end method
