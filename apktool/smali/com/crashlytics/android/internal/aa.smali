.class public interface abstract Lcom/crashlytics/android/internal/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/crashlytics/android/internal/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/crashlytics/android/internal/ab;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/ab;-><init>()V

    sput-object v0, Lcom/crashlytics/android/internal/aa;->a:Lcom/crashlytics/android/internal/aa;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method
