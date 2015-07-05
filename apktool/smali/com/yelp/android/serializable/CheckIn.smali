.class public interface abstract Lcom/yelp/android/serializable/CheckIn;
.super Ljava/lang/Object;
.source "CheckIn.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final EXTRA_CHECK_IN:Ljava/lang/String; = "extra.check_in"

.field public static final EXTRA_MULTIPLE_CHECK_INS:Ljava/lang/String; = "extra.multiple"


# virtual methods
.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
.end method

.method public abstract getBusinessId()Ljava/lang/String;
.end method

.method public abstract getDateCreated()Ljava/util/Date;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract getUserPhotoUrl()Ljava/lang/String;
.end method
