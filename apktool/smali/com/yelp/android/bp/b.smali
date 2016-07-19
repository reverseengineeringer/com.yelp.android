.class public Lcom/yelp/android/bp/b;
.super Ljava/lang/Object;
.source "JqLog.java"


# static fields
.field private static a:Lcom/yelp/android/bp/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/yelp/android/bp/b$1;

    invoke-direct {v0}, Lcom/yelp/android/bp/b$1;-><init>()V

    sput-object v0, Lcom/yelp/android/bp/b;->a:Lcom/yelp/android/bp/a;

    return-void
.end method

.method public static a(Lcom/yelp/android/bp/a;)V
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/yelp/android/bp/b;->a:Lcom/yelp/android/bp/a;

    .line 31
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/yelp/android/bp/b;->a:Lcom/yelp/android/bp/a;

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/bp/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/yelp/android/bp/b;->a:Lcom/yelp/android/bp/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/yelp/android/bp/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/yelp/android/bp/b;->a:Lcom/yelp/android/bp/a;

    invoke-interface {v0}, Lcom/yelp/android/bp/a;->a()Z

    move-result v0

    return v0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yelp/android/bp/b;->a:Lcom/yelp/android/bp/a;

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/bp/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method
