.class public Lcom/android/vending/billing/util/Inventory;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;

.field b:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/billing/util/Inventory;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/billing/util/Inventory;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;
    .locals 1

    iget-object v0, p0, Lcom/android/vending/billing/util/Inventory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/util/SkuDetails;

    return-object v0
.end method

.method a()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vending/billing/util/Inventory;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method a(Lcom/android/vending/billing/util/Purchase;)V
    .locals 2

    iget-object v0, p0, Lcom/android/vending/billing/util/Inventory;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/vending/billing/util/Purchase;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lcom/android/vending/billing/util/SkuDetails;)V
    .locals 2

    iget-object v0, p0, Lcom/android/vending/billing/util/Inventory;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/vending/billing/util/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/vending/billing/util/Inventory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
