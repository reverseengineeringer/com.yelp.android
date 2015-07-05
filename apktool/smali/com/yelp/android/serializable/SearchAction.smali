.class public interface abstract Lcom/yelp/android/serializable/SearchAction;
.super Ljava/lang/Object;
.source "SearchAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getBorderColor()[I
.end method

.method public abstract getBusinessListButton()Lcom/yelp/android/ui/activities/businesspage/o;
.end method

.method public abstract getDefaultColorBottom()[I
.end method

.method public abstract getDefaultColorTop()[I
.end method

.method public abstract getSearchActionType()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
.end method

.method public abstract getSelectedColorBottom()[I
.end method

.method public abstract getSelectedColorTop()[I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextColor()[I
.end method

.method public abstract isDisabled()Z
.end method

.method public abstract onPressed(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;)V
.end method
