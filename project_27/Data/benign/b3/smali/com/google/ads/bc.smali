.class public Lcom/google/ads/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/as;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/ads/e/af;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/google/ads/e/af;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3, v0}, Lcom/google/ads/e/af;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/b/r;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/ads/b/r;->h()Lcom/google/ads/ar;

    move-result-object v1

    iget-object v0, v1, Lcom/google/ads/ar;->a:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ap;

    iget-object v0, v0, Lcom/google/ads/ap;->a:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/aq;

    const-string v3, "min_hwa_banner"

    iget-object v4, v0, Lcom/google/ads/aq;->a:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "min_hwa_overlay"

    iget-object v4, v0, Lcom/google/ads/aq;->b:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "mraid_banner_path"

    iget-object v4, v0, Lcom/google/ads/aq;->c:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "mraid_expanded_banner_path"

    iget-object v4, v0, Lcom/google/ads/aq;->d:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "mraid_interstitial_path"

    iget-object v4, v0, Lcom/google/ads/aq;->e:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "ac_max_size"

    iget-object v4, v0, Lcom/google/ads/aq;->f:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "ac_padding"

    iget-object v4, v0, Lcom/google/ads/aq;->g:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "ac_total_quota"

    iget-object v4, v0, Lcom/google/ads/aq;->h:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "db_total_quota"

    iget-object v4, v0, Lcom/google/ads/aq;->i:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "db_quota_per_origin"

    iget-object v4, v0, Lcom/google/ads/aq;->j:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    const-string v3, "db_quota_step_size"

    iget-object v4, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/e/af;

    invoke-direct {p0, p2, v3, v4}, Lcom/google/ads/bc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/af;)V

    invoke-virtual {p1}, Lcom/google/ads/b/r;->k()Lcom/google/ads/b/c;

    move-result-object v3

    sget v4, Lcom/google/ads/e/a;->a:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/google/ads/b/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/ads/e/p;->a(Landroid/webkit/WebSettings;Lcom/google/ads/ar;)V

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/ads/e/p;->a(Landroid/webkit/WebSettings;Lcom/google/ads/ar;)V

    :cond_0
    iget-object v1, v1, Lcom/google/ads/ar;->k:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/b/x;

    invoke-virtual {v1}, Lcom/google/ads/b/x;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Lcom/google/ads/b/c;->f()Z

    move-result v4

    sget v5, Lcom/google/ads/e/a;->a:I

    iget-object v1, v0, Lcom/google/ads/aq;->a:Lcom/google/ads/e/af;

    invoke-virtual {v1}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v5, v1, :cond_2

    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    if-eqz v4, :cond_3

    const-string v1, "Re-enabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/ads/b/c;->c()V

    :cond_1
    :goto_1
    iget-object v0, v0, Lcom/google/ads/aq;->l:Lcom/google/ads/e/af;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/e/af;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    const-string v1, "Disabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/ads/b/c;->b()V

    goto :goto_1
.end method
