.class public interface abstract Lcom/ooyala/android/PaginatedParentItem;
.super Ljava/lang/Object;
.source "PaginatedParentItem.java"


# virtual methods
.method public abstract childrenCount()I
.end method

.method public abstract fetchMoreChildren(Lcom/ooyala/android/PaginatedItemListener;)Z
.end method

.method public abstract getEmbedCode()Ljava/lang/String;
.end method

.method public abstract getNextChildren()Ljava/lang/String;
.end method

.method public abstract hasMoreChildren()Z
.end method

.method public abstract update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
.end method
