.class public Lme;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# static fields
.field private static final e:[I


# instance fields
.field public a:F

.field public b:Z

.field public c:Z

.field public d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1392
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010181

    aput v2, v0, v1

    sput-object v0, Lme;->e:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1416
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1400
    const/4 v0, 0x0

    iput v0, p0, Lme;->a:F

    .line 1417
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1437
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1400
    iput v2, p0, Lme;->a:F

    .line 1439
    sget-object v0, Lme;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1440
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lme;->a:F

    .line 1441
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1442
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1424
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1400
    const/4 v0, 0x0

    iput v0, p0, Lme;->a:F

    .line 1425
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1428
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1400
    const/4 v0, 0x0

    iput v0, p0, Lme;->a:F

    .line 1429
    return-void
.end method
