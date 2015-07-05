.class public Lcom/yelp/android/appdata/webrequests/YelpException;
.super Ljava/lang/Exception;
.source "YelpException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ANDROID_CLIENT_ERROR:Ljava/lang/String; = "ANDROID_CLIENT_ERROR"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ">;"
        }
    .end annotation
.end field

.field public static final YPErrorCannotConnectToHost:I

.field public static final YPErrorCheckInNoLocation:I

.field public static final YPErrorCountryNotSupported:I

.field public static final YPErrorFacebookConnect:I

.field public static final YPErrorInvalidData:I

.field public static final YPErrorInvalidMIMEType:I

.field public static final YPErrorLocationServicesDisabled:I

.field public static final YPErrorNotConnectedToInternet:I

.field public static final YPErrorServerMaintenance:I

.field public static final YPErrorServerResourceNotFound:I

.field public static final YPErrorServerResponse:I

.field public static final YPErrorUnknown:I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mIsRecoverable:Z

.field private mMessageResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/yelp/android/bf/k;->YPErrorUnknown:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorUnknown:I

    .line 51
    sget v0, Lcom/yelp/android/bf/k;->YPErrorServerResourceNotFound:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResourceNotFound:I

    .line 53
    sget v0, Lcom/yelp/android/bf/k;->YPErrorServerMaintenance:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerMaintenance:I

    .line 55
    sget v0, Lcom/yelp/android/bf/k;->YPErrorServerResponse:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    .line 57
    sget v0, Lcom/yelp/android/bf/k;->YPErrorCannotConnectToHost:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorCannotConnectToHost:I

    .line 58
    sget v0, Lcom/yelp/android/bf/k;->YPErrorNotConnectedToInternet:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorNotConnectedToInternet:I

    .line 61
    sget v0, Lcom/yelp/android/bf/k;->YPErrorInvalidMIMEType:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidMIMEType:I

    .line 63
    sget v0, Lcom/yelp/android/bf/k;->YPErrorUnknown:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    .line 65
    sget v0, Lcom/yelp/android/bf/k;->YPErrorFacebookConnect:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorFacebookConnect:I

    .line 66
    sget v0, Lcom/yelp/android/bf/k;->YPErrorLocationServicesDisabled:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorLocationServicesDisabled:I

    .line 68
    sget v0, Lcom/yelp/android/bf/k;->YPErrorCountryNotSupported:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorCountryNotSupported:I

    .line 69
    sget v0, Lcom/yelp/android/bf/k;->YPErrorCheckInNoLocation:I

    sput v0, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorCheckInNoLocation:I

    .line 80
    new-instance v0, Lcom/yelp/android/appdata/webrequests/hg;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/hg;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/YelpException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mIsRecoverable:Z

    .line 19
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mMessageResource:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mIsRecoverable:Z

    .line 24
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mMessageResource:I

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "ANDROID_CLIENT_ERROR"

    return-object v0
.end method

.method public getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mMessageResource:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/yelp/android/bf/k;->site_name:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageResource()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mMessageResource:I

    return v0
.end method

.method public isRecoverable()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mIsRecoverable:Z

    return v0
.end method

.method public setIsRecoverable(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mIsRecoverable:Z

    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mMessageResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/YelpException;->mIsRecoverable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
