.class public interface abstract Lcom/yelp/android/serializable/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getBusinessId()Ljava/lang/String;
.end method

.method public abstract getCaption()Ljava/lang/String;
.end method

.method public abstract getFeedback()Lcom/yelp/android/serializable/Feedback;
.end method

.method public abstract getFeedbackPositiveCount()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getThumbnailUrl()Ljava/lang/String;
.end method

.method public abstract getTimeCreated()Ljava/util/Date;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getUserPassport()Lcom/yelp/android/serializable/Passport;
.end method

.method public abstract isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z
.end method
