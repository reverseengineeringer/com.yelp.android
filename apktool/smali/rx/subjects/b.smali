.class public abstract Lrx/subjects/b;
.super Lrx/a;
.source "Subject.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/a",
        "<TR;>;",
        "Lrx/b",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lrx/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/a$a",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lrx/a;-><init>(Lrx/a$a;)V

    .line 26
    return-void
.end method
