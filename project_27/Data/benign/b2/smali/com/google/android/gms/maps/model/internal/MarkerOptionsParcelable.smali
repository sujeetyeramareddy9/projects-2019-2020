.class public final Lcom/google/android/gms/maps/model/internal/MarkerOptionsParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lasp;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/maps/model/internal/BitmapDescriptorParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lasp;

    invoke-direct {v0}, Lasp;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/internal/MarkerOptionsParcelable;->CREATOR:Lasp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/model/internal/MarkerOptionsParcelable;->a:I

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/maps/model/internal/BitmapDescriptorParcelable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/internal/MarkerOptionsParcelable;->a:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/internal/MarkerOptionsParcelable;->b:Lcom/google/android/gms/maps/model/internal/BitmapDescriptorParcelable;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/MarkerOptionsParcelable;->a:I

    return v0
.end method

.method public b()Lcom/google/android/gms/maps/model/internal/BitmapDescriptorParcelable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/MarkerOptionsParcelable;->b:Lcom/google/android/gms/maps/model/internal/BitmapDescriptorParcelable;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lasp;->a(Lcom/google/android/gms/maps/model/internal/MarkerOptionsParcelable;Landroid/os/Parcel;I)V

    return-void
.end method
