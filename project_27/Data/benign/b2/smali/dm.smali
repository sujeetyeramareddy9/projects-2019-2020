.class public Ldm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ldp;

.field private static final c:Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 296
    new-instance v0, Ldq;

    invoke-direct {v0}, Ldq;-><init>()V

    sput-object v0, Ldm;->b:Ldp;

    .line 302
    :goto_0
    sget-object v0, Ldm;->b:Ldp;

    invoke-interface {v0}, Ldp;->a()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Ldm;->c:Ljava/lang/Object;

    .line 303
    return-void

    .line 297
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 298
    new-instance v0, Ldn;

    invoke-direct {v0}, Ldn;-><init>()V

    sput-object v0, Ldm;->b:Ldp;

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Lds;

    invoke-direct {v0}, Lds;-><init>()V

    sput-object v0, Ldm;->b:Ldp;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    sget-object v0, Ldm;->b:Ldp;

    invoke-interface {v0, p0}, Ldp;->a(Ldm;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldm;->a:Ljava/lang/Object;

    .line 312
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Ldm;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Landroid/view/View;)Ljr;
    .locals 2

    .prologue
    .line 480
    sget-object v0, Ldm;->b:Ldp;

    sget-object v1, Ldm;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ldp;->a(Ljava/lang/Object;Landroid/view/View;)Ljr;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 336
    sget-object v0, Ldm;->b:Ldp;

    sget-object v1, Ldm;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ldp;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 337
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 358
    sget-object v0, Ldm;->b:Ldp;

    sget-object v1, Ldm;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ldp;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 359
    return-void
.end method

.method public a(Landroid/view/View;Ljg;)V
    .locals 2

    .prologue
    .line 438
    sget-object v0, Ldm;->b:Ldp;

    sget-object v1, Ldm;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ldp;->a(Ljava/lang/Object;Landroid/view/View;Ljg;)V

    .line 439
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 500
    sget-object v0, Ldm;->b:Ldp;

    sget-object v1, Ldm;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Ldp;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 462
    sget-object v0, Ldm;->b:Ldp;

    sget-object v1, Ldm;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Ldp;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 379
    sget-object v0, Ldm;->b:Ldp;

    sget-object v1, Ldm;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ldp;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 399
    sget-object v0, Ldm;->b:Ldp;

    sget-object v1, Ldm;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ldp;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 400
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 419
    sget-object v0, Ldm;->b:Ldp;

    sget-object v1, Ldm;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ldp;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 420
    return-void
.end method