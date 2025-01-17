.class public final Lcyanogenmod/app/ProfileGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ProfileGroup"


# instance fields
.field private mDefaultGroup:Z

.field private mDirty:Z

.field private mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

.field private mRingerOverride:Landroid/net/Uri;

.field private mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

.field private mSoundOverride:Landroid/net/Uri;

.field private mUuid:Ljava/util/UUID;

.field private mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcyanogenmod/app/ProfileGroup$1;

    invoke-direct {v0}, Lcyanogenmod/app/ProfileGroup$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 53
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 54
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 55
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 56
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 88
    invoke-virtual {p0, p1}, Lcyanogenmod/app/ProfileGroup;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/ProfileGroup$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcyanogenmod/app/ProfileGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/UUID;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 51
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 53
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 54
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 55
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 56
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 58
    iput-boolean v2, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 80
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 81
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 82
    iput-boolean p3, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 83
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 84
    return-void

    .line 81
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 83
    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/UUID;Z)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcyanogenmod/app/ProfileGroup;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 77
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/ProfileGroup;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 357
    const-string v0, "name"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    const-string v0, "uuid"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_2

    .line 363
    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 369
    :goto_0
    const-string v3, "default"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    const-string v3, "true"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 372
    new-instance v3, Lcyanogenmod/app/ProfileGroup;

    invoke-direct {v3, v2, v0, v1}, Lcyanogenmod/app/ProfileGroup;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 373
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    move-object v0, v2

    .line 374
    :goto_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "profileGroup"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 375
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 376
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v1, "sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcyanogenmod/app/ProfileGroup;->setSoundOverride(Landroid/net/Uri;)V

    .line 393
    :cond_1
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v0, "ProfileGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID not recognized for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", using new one."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 379
    :cond_3
    const-string v1, "ringer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcyanogenmod/app/ProfileGroup;->setRingerOverride(Landroid/net/Uri;)V

    goto :goto_2

    .line 381
    :cond_4
    const-string v1, "soundMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 382
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcyanogenmod/app/ProfileGroup;->setSoundMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 383
    :cond_5
    const-string v1, "ringerMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 384
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcyanogenmod/app/ProfileGroup;->setRingerMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 385
    :cond_6
    const-string v1, "vibrateMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 386
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcyanogenmod/app/ProfileGroup;->setVibrateMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 387
    :cond_7
    const-string v1, "lightsMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcyanogenmod/app/ProfileGroup;->setLightsMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto/16 :goto_2

    .line 390
    :cond_8
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 391
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Premature end of file while parsing profleGroup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 399
    return-object v3
.end method

.method private validateOverrideUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-static {p2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    const/4 v0, 0x1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 236
    const/4 v0, 0x0

    .line 238
    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public applyOverridesToNotification(Landroid/app/Notification;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    sget-object v0, Lcyanogenmod/app/ProfileGroup$2;->$SwitchMap$cyanogenmod$app$ProfileGroup$Mode:[I

    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    sget-object v0, Lcyanogenmod/app/ProfileGroup$2;->$SwitchMap$cyanogenmod$app$ProfileGroup$Mode:[I

    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 218
    :goto_1
    sget-object v0, Lcyanogenmod/app/ProfileGroup$2;->$SwitchMap$cyanogenmod$app$ProfileGroup$Mode:[I

    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 229
    :goto_2
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 201
    :pswitch_1
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 202
    iput-object v2, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 209
    :pswitch_2
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 212
    :pswitch_3
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 213
    iput-object v2, p1, Landroid/app/Notification;->vibrate:[J

    goto :goto_1

    .line 220
    :pswitch_4
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_2

    .line 223
    :pswitch_5
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 224
    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->flags:I

    goto :goto_2

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 207
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 218
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getLightsMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerOverride()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getSoundMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getSoundOverride()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVibrateMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 330
    const-string v0, "<profileGroup uuid=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "\" name=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_0
    const-string v0, "\" default=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 338
    const-string v0, "\">\n<sound>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v0, "</sound>\n<ringer>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v0, "</ringer>\n<soundMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    const-string v0, "</soundMode>\n<ringerMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    const-string v0, "</ringerMode>\n<vibrateMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    const-string v0, "</vibrateMode>\n<lightsMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    const-string v0, "</lightsMode>\n</profileGroup>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 352
    return-void
.end method

.method public isDefaultGroup()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    return v0
.end method

.method public matches(Landroid/app/NotificationGroup;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 93
    iget-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 108
    :goto_1
    if-nez v2, :cond_2

    move v0, v1

    .line 109
    goto :goto_0

    .line 104
    :cond_1
    iget-boolean v2, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    move v2, v0

    .line 105
    goto :goto_1

    .line 112
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 114
    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 307
    const/4 v5, 0x2

    if-lt v0, v5, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 309
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 312
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 313
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 315
    const-class v0, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 316
    const-class v0, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 317
    const-class v0, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 318
    const-class v0, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 321
    :cond_0
    add-int v0, v4, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 322
    return-void

    :cond_1
    move v0, v2

    .line 310
    goto :goto_0

    :cond_2
    move v1, v2

    .line 311
    goto :goto_1
.end method

.method public setLightsMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1

    .prologue
    .line 184
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 186
    return-void
.end method

.method public setRingerMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 166
    return-void
.end method

.method public setRingerOverride(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 146
    return-void
.end method

.method public setSoundMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 156
    return-void
.end method

.method public setSoundOverride(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 136
    return-void
.end method

.method public setVibrateMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 176
    return-void
.end method

.method validateOverrideUris(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcyanogenmod/app/ProfileGroup;->validateOverrideUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 248
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 249
    iput-boolean v1, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 251
    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcyanogenmod/app/ProfileGroup;->validateOverrideUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 253
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 254
    iput-boolean v1, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 256
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 274
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 278
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 280
    iget-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 283
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 284
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int/2addr v0, v4

    .line 291
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 292
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 294
    return-void

    :cond_0
    move v0, v2

    .line 280
    goto :goto_0

    :cond_1
    move v1, v2

    .line 281
    goto :goto_1
.end method
