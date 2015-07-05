.class interface abstract Lcom/ooyala/android/AuthorizableItemInternal;
.super Ljava/lang/Object;
.source "AuthorizableItemInternal.java"

# interfaces
.implements Lcom/ooyala/android/AuthorizableItem;


# virtual methods
.method public abstract embedCodesToAuthorize()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHeartbeatRequired()Z
.end method

.method public abstract update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
.end method
