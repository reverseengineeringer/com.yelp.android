.class public interface abstract Lcom/brightcove/player/controller/SourceSelector;
.super Ljava/lang/Object;
.source "SourceSelector.java"


# virtual methods
.method public abstract selectSource(Lcom/brightcove/player/model/Video;)Lcom/brightcove/player/model/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brightcove/player/controller/NoSourceFoundException;
        }
    .end annotation
.end method
