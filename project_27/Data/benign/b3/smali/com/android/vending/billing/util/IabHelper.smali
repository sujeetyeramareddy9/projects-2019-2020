.class public Lcom/android/vending/billing/util/IabHelper;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Ljava/lang/String;

.field f:Landroid/content/Context;

.field g:Lcom/android/vending/billing/IInAppBillingService;

.field h:Landroid/content/ServiceConnection;

.field i:I

.field j:Ljava/lang/String;

.field k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/vending/billing/util/IabHelper;->a:Z

    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/vending/billing/util/IabHelper;->c:Z

    iput-boolean v1, p0, Lcom/android/vending/billing/util/IabHelper;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/vending/billing/util/IabHelper;->j:Ljava/lang/String;

    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    rsub-int v0, p0, -0x3e8

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Lcom/android/vending/billing/util/Inventory;)I
    .locals 12

    const/4 v3, 0x0

    const-string v0, "Querying owned items..."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/vending/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "inapp"

    invoke-interface {v2, v4, v5, v6, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/util/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Owned items response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/vending/billing/util/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    move v3, v0

    :cond_0
    :goto_1
    return v3

    :cond_1
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    const/16 v3, -0x3ea

    goto :goto_1

    :cond_3
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v5, v3

    move v4, v1

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/vending/billing/util/IabHelper;->j:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lcom/android/vending/billing/util/Security;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/android/vending/billing/util/Purchase;

    invoke-direct {v2, v0, v1}, Lcom/android/vending/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/vending/billing/util/Purchase;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/vending/billing/util/Inventory;->a(Lcom/android/vending/billing/util/Purchase;)V

    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_5
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Purchase data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Signature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v4, :cond_0

    const/16 v3, -0x3eb

    goto/16 :goto_1

    :cond_7
    move v1, v4

    goto/16 :goto_0
.end method

.method a(Lcom/android/vending/billing/util/Inventory;Ljava/util/List;)I
    .locals 6

    const/4 v1, 0x0

    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/vending/billing/util/Inventory;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/vending/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inapp"

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/vending/billing/util/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    const/16 v0, -0x3ea

    goto :goto_0

    :cond_3
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/android/vending/billing/util/SkuDetails;

    invoke-direct {v3, v0}, Lcom/android/vending/billing/util/SkuDetails;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/android/vending/billing/util/Inventory;->a(Lcom/android/vending/billing/util/SkuDetails;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public a(ZLjava/util/List;)Lcom/android/vending/billing/util/Inventory;
    .locals 4

    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/android/vending/billing/util/Inventory;

    invoke-direct {v0}, Lcom/android/vending/billing/util/Inventory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->a(Lcom/android/vending/billing/util/Inventory;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/vending/billing/util/IabException;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/vending/billing/util/IabException;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/android/vending/billing/util/IabHelper;->a(Lcom/android/vending/billing/util/Inventory;Ljava/util/List;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/vending/billing/util/IabException;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/vending/billing/util/IabException;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->c:Z

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vending/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iput-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    iput-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    :cond_1
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/util/IabHelper;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->a(Ljava/lang/String;)V

    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->b(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructing buy intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inapp"

    move-object v3, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to buy item, Error response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/vending/billing/util/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    new-instance v2, Lcom/android/vending/billing/util/IabResult;

    const-string v3, "Unable to buy item"

    invoke-direct {v2, v1, v3}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p4, v2, v1}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    :cond_0
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    iput p3, p0, Lcom/android/vending/billing/util/IabHelper;->i:I

    iput-object p4, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-interface {p4, v0, v7}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-interface {p4, v0, v7}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto :goto_0
.end method

.method public a(Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/android/vending/billing/util/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/billing/util/IabHelper$1;-><init>(Lcom/android/vending/billing/util/IabHelper;Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->f:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method a(Lcom/android/vending/billing/util/Purchase;)V
    .locals 5

    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/vending/billing/util/Purchase;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/vending/billing/util/Purchase;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/android/vending/billing/util/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/vending/billing/util/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/vending/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/vending/billing/util/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/android/vending/billing/util/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/vending/billing/util/IabHelper;->a:Z

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/vending/billing/util/IabHelper;->a:Z

    iput-object p2, p0, Lcom/android/vending/billing/util/IabHelper;->b:Ljava/lang/String;

    return-void
.end method

.method public a(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->a(Ljava/lang/String;)V

    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->b(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/vending/billing/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/billing/util/IabHelper$2;-><init>(Lcom/android/vending/billing/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget v2, p0, Lcom/android/vending/billing/util/IabHelper;->i:I

    if-eq p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/vending/billing/util/IabHelper;->c()V

    if-nez p3, :cond_2

    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v8, v2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/vending/billing/util/IabHelper;->a(Landroid/content/Intent;)I

    move-result v2

    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ne p2, v5, :cond_a

    if-nez v2, :cond_a

    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_0
    new-instance v2, Lcom/android/vending/billing/util/Purchase;

    invoke-direct {v2, v3, v4}, Lcom/android/vending/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/vending/billing/util/Purchase;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vending/billing/util/IabHelper;->j:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/android/vending/billing/util/Security;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signature verification failed for sku "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v3, v0, v2}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v3, "Purchase signature successfully verified."

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v4, Lcom/android/vending/billing/util/IabResult;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    :cond_8
    :goto_1
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v8, v2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    if-ne p2, v5, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/android/vending/billing/util/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto :goto_1

    :cond_b
    if-nez p2, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase canceled - Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/android/vending/billing/util/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    const/16 v2, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto :goto_1

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase failed. Result code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/android/vending/billing/util/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->k:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto/16 :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/vending/billing/util/IabHelper;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->c:Z

    return v0
.end method

.method c()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/util/IabHelper;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->c(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->d:Z

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
