.class Lcom/yelp/android/dk/c;
.super Lcom/yelp/android/dk/b;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static a:Lcom/yelp/android/dk/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/dk/c;

    invoke-direct {v0}, Lcom/yelp/android/dk/c;-><init>()V

    sput-object v0, Lcom/yelp/android/dk/c;->a:Lcom/yelp/android/dk/c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/dk/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/yelp/android/dk/b;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/yelp/android/dk/c;->a:Lcom/yelp/android/dk/c;

    return-object v0
.end method
