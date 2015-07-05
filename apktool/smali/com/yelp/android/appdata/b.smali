.class Lcom/yelp/android/appdata/b;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/AppData;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/AppData;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/yelp/android/appdata/b;->a:Lcom/yelp/android/appdata/AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 174
    invoke-static {p2}, Lcom/crashlytics/android/d;->a(Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method
