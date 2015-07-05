.class public interface abstract Lcom/brightcove/player/event/Component;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "sample",
        "event",
        "list"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "play",
        "stop"
    }
.end annotation
