.class final Lcom/crashlytics/android/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/bb;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/bb;)V
    .locals 0

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/crashlytics/android/g;->a:Lcom/crashlytics/android/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/crashlytics/android/g;->a:Lcom/crashlytics/android/bb;

    iget-object v1, p0, Lcom/crashlytics/android/g;->a:Lcom/crashlytics/android/bb;

    sget-object v2, Lcom/crashlytics/android/ao;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/crashlytics/android/bb;->a(Lcom/crashlytics/android/bb;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/bb;->a([Ljava/io/File;)V

    .line 1865
    return-void
.end method
