.class public Lcom/google/ads/z;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/Integer;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/aa;

    invoke-direct {v0}, Lcom/google/ads/aa;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/z;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/ads/e/d;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/z;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/z;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/z;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/google/ads/z;->e:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/ads/z;->f:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/ads/z;->g:Ljava/util/List;

    iput-object p7, p0, Lcom/google/ads/z;->h:Ljava/util/List;

    iput-object p8, p0, Lcom/google/ads/z;->i:Ljava/util/List;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/google/ads/j;
    .locals 9

    const/4 v5, 0x0

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "allocation_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "adapters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v5

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "imp_urls"

    invoke-static {p0, v0}, Lcom/google/ads/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v6, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v5, v0

    :cond_2
    new-instance v0, Lcom/google/ads/j;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/ads/z;
    .locals 9

    const/4 v0, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "qdata"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ad_type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "ad_networks"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/google/ads/z;->a(Lorg/json/JSONObject;)Lcom/google/ads/j;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string v4, "settings"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v4, "refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    const-string v6, "ad_network_timeout_millis"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "ad_network_timeout_millis"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    const-string v6, "imp_urls"

    invoke-static {v5, v6}, Lcom/google/ads/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v7, "click_urls"

    invoke-static {v5, v7}, Lcom/google/ads/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "nofill_urls"

    invoke-static {v5, v8}, Lcom/google/ads/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object v5, v0

    :goto_3
    new-instance v0, Lcom/google/ads/z;

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_3
    move-object v4, v0

    goto :goto_2

    :cond_4
    move-object v8, v0

    move-object v6, v0

    move-object v7, v0

    move-object v5, v0

    move-object v4, v0

    goto :goto_3
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/z;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/z;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/z;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/z;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/z;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/z;->g:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/z;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/z;->i:Ljava/util/List;

    return-object v0
.end method

.method public j()Lcom/google/ads/b/x;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/ads/z;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "interstitial"

    iget-object v2, p0, Lcom/google/ads/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/b/x;->a:Lcom/google/ads/b/x;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/ads/z;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/ads/z;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/g;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/google/ads/b/x;->a(Lcom/google/ads/g;)Lcom/google/ads/b/x;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
